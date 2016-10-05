#!/usr/bin/env python
# -*- coding: utf-8 -*-


from datetime import datetime
from sqlalchemy import (MetaData,Table,Column,Integer, Numeric, String, DateTime, ForeignKey, create_engine)

metadata = MetaData()

users = Table('users',metadata,
              Column('user_id',Integer(), primary_key=True),
              Column('username', String(15), autoincrement=True),
              Column('password', String(25), nullable=False),
              Column('created_on', DateTime(),default=datetime.now())
              )


engine = create_engine('sqlite:///:memory:')
metadata.create_all(engine)

