#!/usr/bin/python3
"""main linked of all files"""
-> If the environmental variable 'HBNB_TYPE_STORAGE' is set to 'db',
   instantiates a db storage.
-> Otherwise, instantiates  files storage.
"""
from os import getenv
if getenv("HBNB_TYPE_STORAGE") == "db":
    from models.engine.db_storage import DBStorage
    storage = DBStorage()
else:
    from models.engine.file_storage import FileStorage
    storage = FileStorage()
storage.reload()
