# *- coding: utf-8 -*-
from __future__ import absolute_import
from __future__ import unicode_literals

from ngoschema.protocols import with_metaclass, SchemaMetaclass, ObjectProtocol
from ngoschema.models.files import UriFile
import audio_metadata
import imageio.v3 as iio
from PIL import Image
import inflection

from ..schema_org import SchemaOrg, SchemaOrgMetaclass
from .files import FileInfo


class MediaFile(with_metaclass(SchemaOrgMetaclass)):
    _id = 'https://numengo.org/vishuda#/$defs/files/$defs/medias/$defs/MediaFile'
    _lazyLoading = True

    def __init__(self, value=None, **kwargs):
        UriFile.__init__(self, value=value, **kwargs)

    def get_file_info(self):
        if self._data['file_info'] is None:
            return FileInfo(filepath=self.filepath, context=self._context)
        return self._data['file_info']


class AudioTags(with_metaclass(SchemaMetaclass)):
    _id = 'https://numengo.org/vishuda#/$defs/files/$defs/medias/$defs/AudioTags'


class AudioStreamInfo(with_metaclass(SchemaMetaclass)):
    _id = 'https://numengo.org/vishuda#/$defs/files/$defs/medias/$defs/AudioStreamInfo'


class AudioFile(with_metaclass(SchemaOrgMetaclass)):
    _id = 'https://numengo.org/vishuda#/$defs/files/$defs/medias/$defs/AudioFile'
    _lazyLoading = True

    _metadata = None
    @property
    def metadata(self):
        if self._metadata is None:
            self._metadata = audio_metadata.load(str(self.filepath))
        return self._metadata

    def get_stream_info(self):
        if self._data['stream_info'] is None:
            streaminfo = self.metadata.streaminfo
            return AudioStreamInfo(
                duration=streaminfo.duration,
                sample_rate=streaminfo.sample_rate,
                bitrate=streaminfo.bitrate,
                bitrate_mode=streaminfo.bitrate_mode.name,
                channel_mode=streaminfo.channel_mode.name,
                channels=streaminfo.channels,
                layer=streaminfo.layer,
                protected=streaminfo.protected,
                #bit_depth=streaminfo.bit_depth,
                )
        return self._data['stream_info']

    def get_audiotags(self):
        if self._data['audiotags'] is None:
            tags = dict(self.metadata.tags or {})
            tn = tags.get('tracknumber', [])
            if tn and isinstance(tn[0], str) and '/' in tn[0]:
                tags['tracknumber'] = [tn[0].split('/')[0]]
            return AudioTags(**{k: v[0] for k, v in tags.items() if v}, validate=True)
        return self._data['audiotags']


class ExifInfo(with_metaclass(SchemaMetaclass)):
    _id = 'https://numengo.org/vishuda#/$defs/files/$defs/medias/$defs/ImageInfo'


class ImageInfo(with_metaclass(SchemaMetaclass)):
    _id = 'https://numengo.org/vishuda#/$defs/files/$defs/medias/$defs/ImageInfo'


class ImageFile(with_metaclass(SchemaOrgMetaclass)):
    _id = 'https://numengo.org/vishuda#/$defs/files/$defs/medias/$defs/ImageFile'

    _image_pil = None
    @property
    def image_pil(self):
        if self._image_pil is None:
            self._image_pil = Image.open(self.filepath)
        return self._image_pil

    def get_image_info(self):
        if self._data['image_info'] is None:
            from PIL.ExifTags import TAGS
            from PIL.TiffImagePlugin import IFDRational
            im = self.image_pil

            def pre_convert(value):
                if isinstance(value, bytes):
                    return value.decode()
                elif isinstance(value, IFDRational):
                    return str(value)
                return value
            exif = {inflection.underscore(TAGS.get(k, k)): pre_convert(v) for k, v in im.getexif().items()}
            exif_info = ExifInfo(exif)

            return ImageInfo(height=im.height,
                             width=im.width,
                             format=im.format,
                             color_space=im.mode,
                             codec=im.format,
                             long_codec=im.format_description,
                             layers=getattr(im, "layers", None),
                             bits=getattr(im, "bits", None),
                             dpi=im.info['dpi'],
                             is_animated=getattr(im, "is_animated", False),
                             #alpha_channel=None, #TODO
                             n_frames=getattr(im, "n_frames", 1),
                             exif_info=exif_info)
        return self._data['image_info']


class VideoInfo(with_metaclass(SchemaMetaclass)):
    _id = 'https://numengo.org/vishuda#/$defs/files/$defs/medias/$defs/VideoInfo'


class VideoFile(with_metaclass(SchemaOrgMetaclass)):
    _id = 'https://numengo.org/vishuda#/$defs/files/$defs/medias/$defs/VideoFile'

    def get_video_info(self):
        if self._data['video_info'] is None:
            fp = str(self.filepath)
            with iio.imopen(fp, "r", legacy_mode=False, plugin='pyav') as vid_file:
                props = vid_file.properties()
                try:
                    metadata = vid_file.metadata()
                except Exception as er:
                    metadata = {'video_format': None, 'codec': None, 'long_codec': None, 'duration': None, 'fps': None}

            return VideoInfo(
                height=props.shape[1],
                width=props.shape[2],
                format=metadata['video_format'],
                codec=metadata['codec'],
                long_codec=metadata['long_codec'],
                layers=props.shape[3],
                n_frames=props.shape[0],
                shape=props.shape,
                duration=metadata['duration'],
                fps=metadata['fps']
            )
        return self._data['video_info']

