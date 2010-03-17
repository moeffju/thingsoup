from sqlalchemy import Column, Integer, String

from meta import Base

class Thing(Base):
        __tablename__ = 'things'
        
        id = Column(Integer, primary_key=True)
        thing = Column(String)
        
        def __init__(self, thing, id=None):
            self.thing = thing
            if id is not None:
                self.id = id
        
        def __repr__(self):
            return "<Thing(id=%d, thing=%s)>" % (self.id, self.thing)
