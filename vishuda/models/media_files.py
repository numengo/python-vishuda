# *- coding: utf-8 -*-
from __future__ import absolute_import
from __future__ import unicode_literals

from ngoschema.protocols import with_metaclass, SchemaMetaclass, ObjectProtocol
from ngoschema.models.files import UriFile, FileInfo
import audio_metadata
import imageio.v3 as iio
from PIL import Image
import inflection


class MediaFile(with_metaclass(SchemaMetaclass)):
    _id = 'https://numengo.org/vishuda#/$defs/media_files/$defs/MediaFile'
    _lazyLoading = True

    def get_file_info(self):
        return FileInfo(file=self, context=self._context)


class AudioTags(with_metaclass(SchemaMetaclass)):
    _id = 'https://numengo.org/vishuda#/$defs/media_files/$defs/AudioTags'


class AudioStreamInfo(with_metaclass(SchemaMetaclass)):
    _id = 'https://numengo.org/vishuda#/$defs/media_files/$defs/AudioStreamInfo'


class AudioFile(with_metaclass(SchemaMetaclass)):
    _id = 'https://numengo.org/vishuda#/$defs/media_files/$defs/AudioFile'
    _lazyLoading = True

    _metadata = None
    @property
    def metadata(self):
        if self._metadata is None:
            self._metadata = audio_metadata.load(str(self.filepath))
        return self._metadata

    def get_stream_info(self):
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

    def get_tags(self):
        tags = self.metadata.tags
        return AudioTags(**tags)


class ExifInfo(with_metaclass(SchemaMetaclass)):
    _id = 'https://numengo.org/vishuda#/$defs/media_files/$defs/ImageInfo'


class ImageInfo(with_metaclass(SchemaMetaclass)):
    _id = 'https://numengo.org/vishuda#/$defs/media_files/$defs/ImageInfo'


class ImageFile(with_metaclass(SchemaMetaclass)):
    _id = 'https://numengo.org/vishuda#/$defs/media_files/$defs/ImageFile'

    _image_pil = None
    @property
    def image_pil(self):
        if self._image_pil is None:
            self._image_pil = Image.open(self.filepath)
        return self._image_pil

    def get_image_info(self):
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


class VideoInfo(with_metaclass(SchemaMetaclass)):
    _id = 'https://numengo.org/vishuda#/$defs/media_files/$defs/VideoInfo'


class VideoFile(with_metaclass(SchemaMetaclass)):
    _id = 'https://numengo.org/vishuda#/$defs/media_files/$defs/VideoFile'

    def get_video_info(self):
        fp = str(self.filepath)
        with iio.imopen(fp, "r", legacy_mode=False, plugin='pyav') as vid_file:
            props = vid_file.properties()
            metadata = vid_file.metadata()

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

