"""The application's model objects"""
import sqlalchemy as sa
from sqlalchemy import orm
from uuid import uuid4

from thingsoup.model import meta

def init_model(engine):
    """Call me before using any of the tables or classes in the model"""
    ## Reflected tables must be defined and mapped here
    #global reflected_table
    #reflected_table = sa.Table("Reflected", meta.metadata, autoload=True,
    #                           autoload_with=engine)
    #orm.mapper(Reflected, reflected_table)
    #
    meta.Session.configure(bind=engine)
    meta.engine = engine


## Non-reflected tables may be defined and mapped at module level
#foo_table = sa.Table("Foo", meta.metadata,
#    sa.Column("id", sa.types.Integer, primary_key=True),
#    sa.Column("bar", sa.types.String(255), nullable=False),
#    )
#
#class Foo(object):
#    pass
#
#orm.mapper(Foo, foo_table)


## Classes for reflected tables may be defined here, but the table and
## mapping itself must be done in the init_model function
#reflected_table = None
#
#class Reflected(object):
#    pass

things_table = sa.Table('things', meta.metadata,
                sa.Column('uuid', sa.types.String(36), primary_key=True),
                # str(uuid.uuid4()).__len__() is always 36
                sa.Column('dc_title', sa.types.Unicode(255), default=''),
                sa.Column('dc_description', sa.types.Unicode(), default=''),
                sa.Column('dc_type', sa.types.String())
                )


class Thing(object):

    def __init__(self, title, description='', type='PhysicalObject'):
        self.uuid = str(uuid4())
        self.dc_title = title
        self.dc_description = description
        self.dc_type = type

    def __unicode__(self):
        return self.uuid + self.dc_title + self.dc_type + self.dc_description

    __str__ = __unicode__

orm.mapper(Thing, things_table)
