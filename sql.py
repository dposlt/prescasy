#!/usr/bin/env python
# -*- coding: utf-8 -*-


from datetime import datetime
from sqlalchemy import (MetaData,Table,Column,Integer, Numeric, String, DateTime, ForeignKey, create_engine)

metadata = MetaData()

# prepis do trid

class sqlData:
    def createTable(self, tableName,*tableColumn, typeColumn):
        tableName = Table(tableName, metadata,
                      Column('id',Integer(), primary_key=True),
                        for i in tableColumn:
                            Column(i, typeColumn, )
                      Column('username', String(15), autoincrement=True),
                      Column('password', String(25), nullable=False),
                      Column('created_on', DateTime(),default=datetime.now())
                      )

engine = create_engine('sqlite:///:memory:')
metadata.create_all(engine)

