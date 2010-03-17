"""The application's model objects"""
import sqlalchemy as sa
from sqlalchemy import orm

from thingsoup.model import meta

def init_model(engine):
    """Call me before using any of the tables or classes in the model"""
    ## Reflected tables must be defined and mapped here
    #global reflected_table
    #reflected_table = sa.Table("Reflected", meta.metadata, autoload=True,
    #                           autoload_with=engine)
    #orm.mapper(Reflected, reflected_table)

    sm = orm.sessionmaker(bind=engine)

    meta.engine = engine
    meta.Session = orm.scoped_session(sm)


from thingsoup.model.message import Message
