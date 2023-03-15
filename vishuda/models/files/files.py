# -*- coding: utf-8 -*-
"""
utilities and stores to resolve canonical names in models

author: Cedric ROMAN
email: roman@numengo.com
licence: GNU GPLv3
"""
from __future__ import print_function
from __future__ import unicode_literals

import arrow
import magic
import multiprocessing as mp

from ngoschema.decorators import assert_arg, depend_on_prop
from ngoschema.protocols import SchemaMetaclass, ObjectProtocol, with_metaclass
from ngoschema.models.files import File, Folder
from ngofile.list_files import list_files

_magic = magic.Magic(mime=True)


class FileInfo(with_metaclass(SchemaMetaclass)):
    _id = 'https://numengo.org/vishuda#/$defs/files/$defs/FileInfo'
    _lazyLoading = True

    #def __init__(self, filepath=None, file=None, binary=False, **opts):
    #    file = file or File(filepath=filepath, binary=binary)
    #    ObjectProtocol.__init__(self, file=file, **opts)

    #def get_dateCreated(self):
    #    return arrow.get(self.filepath.stat().st_ctime)
    #
    #def get_dateModified(self):
    #    return arrow.get(self.filepath.stat().st_mtime)

    def get_contentSize(self):
        return self.filepath.stat().st_size

    def get_mimetype(self):
        return _magic.from_file(str(self.filepath))

    @depend_on_prop('contentSize')
    def get_contentSizeHuman(self):
        num = int(self.contentSize)
        for x in ['bytes', 'KB', 'MB', 'GB', 'TB']:
            if num < 1024.0:
                return "%3.1f %s" % (num, x)
            num /= 1024.0
        return num

    def get_sha1(self):
        return
        import hashlib
        sha = hashlib.sha1()
        #fp = self.file.filepath if self.file else None
        fp = self.filepath
        if fp:
            with open(str(fp), 'rb') as source:
                block = source.read(2 ** 16)
                while len(block) != 0:
                    sha.update(block)
                    block = source.read(2 ** 16)
        elif self.uri:
            response = urlopen(str(self.uri))
            block = response.read(2 ** 16)
            while len(block) != 0:
                sha.update(block)
                block = response.read(2 ** 16)
        return sha.hexdigest()

    def get_media(self):
        if self._data['media'] is None:
            from .medias import MediaFile, ImageFile, VideoFile, AudioFile
            mime = self.mimetype
            if mime:
                fp = self.filepath
                mtype, subtype = mime.split('/')
                if mtype == 'video':
                    return VideoFile(filepath=fp, format=subtype, file_info=self)
                elif mtype == 'audio':
                    return AudioFile(filepath=fp, format=subtype, file_info=self)
                elif mtype == 'image':
                    return ImageFile(filepath=fp, format=subtype, file_info=self)


class FolderInfo(with_metaclass(SchemaMetaclass)):
    _id = 'https://numengo.org/vishuda#/$defs/files/$defs/FolderInfo'
    _lazyLoading = True

    def get_files(self):
        return [File(filepath=f)
                for f in list_files(self.filepath,
                                    #includes=self.includes,
                                    excludes=list(self.excludes),
                                    recursive=self.recursive)]

    def get_subfolders(self):
        return [Folder(filepath=f)
                for f in list_files(self.filepath,
                                    #includes=self.includes,
                                    excludes=list(self.excludes),
                                    recursive=self.recursive,
                                    folders=2)]

    def get_files_info(self):
        return [FileInfo(filepath=f.filepath) for f in self.files]

    def get_subfolders_info(self):
        return [FolderInfo(filepath=f.filepath) for f in self.subfolders]

    def get_parent(self):
        return FolderInfo(filepath=self.filepath.parent, recursive=False)

    def get_medias(self):
        return [f.media for f in self.files_info if f.media is not None]

    def get_videos(self):
        return [m for m in self.medias if m._type == 'video']

    def get_audios(self):
        return [m for m in self.medias if m._type == 'audio']

    def get_images(self):
        return [m for m in self.medias if m._type == 'image']


class ZipFile(with_metaclass(SchemaMetaclass)):
    _id = 'https://numengo.org/ngoschema#/$defs/files/$defs/ZipFile'

