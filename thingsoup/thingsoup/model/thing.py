from sqlalchemy import Column, Integer, String
from uuid import uuid4

from meta import Base

class Thing(Base):
        __tablename__ = 'things'
        
        uuid = Column(String(36), primary_key=True)
        # str(uuid.uuid4()).__len__() is always 36
        dc_title = Column(String)
        dc_description = Column(String)
        dc_type = Column(String)

        def __init__(self, title, description='', type='PhysicalObject'):
            self.uuid = str(uuid4())
            self.dc_title = title
            self.dc_description = description
            self.dc_type = type

        def __repr__(self):
            return "<Thing(id=%d, thing=%s)>" % (self.uuid, self.title)
