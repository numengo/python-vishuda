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

from ngoschema.decorators import assert_arg, depend_on_prop
from ngoschema.protocols import SchemaMetaclass, ObjectProtocol, with_metaclass
from ngoschema.models.files import File
from ngofile.list_files import list_files


class FileInfo(with_metaclass(SchemaMetaclass)):
    _id = 'https://numengo.org/vishuda#/$defs/files/$defs/FileInfo'
    _lazyLoading = True

    def __init__(self, filepath=None, file=None, binary=False, **opts):
        file = file or File(filepath=filepath, binary=binary)
        ObjectProtocol.__init__(self, file=file, **opts)

    def get_dateCreated(self):
        return arrow.get(self.filepath.stat().st_ctime)

    def get_dateModified(self):
        return arrow.get(self.filepath.stat().st_mtime)

    def get_contentSize(self):
        return self.filepath.stat().st_size

    def get_mimetype(self):
        import magic
        return magic.Magic(mime=True).from_file(str(self.filepath))

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
        fp = self.file.filepath if self.file else None
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


class FolderInfo(with_metaclass(SchemaMetaclass)):
    _id = 'https://numengo.org/vishuda#/$defs/files/$defs/FolderInfo'


class ZipFile(with_metaclass(SchemaMetaclass)):
    _id = 'https://numengo.org/vishuda#/$defs/files/$defs/ZipFile'

