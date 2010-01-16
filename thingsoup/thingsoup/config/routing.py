"""Routes configuration

The more specific and detailed routes should be defined first so they
may take precedent over the more generic routes. For more information
refer to the routes manual at http://routes.groovie.org/docs/
"""
from pylons import config
from routes import Mapper

def make_map():
    """Create, configure and return the routes Mapper"""
    map = Mapper(directory=config['pylons.paths']['controllers'],
                 always_scan=config['debug'])
    map.minimization = False

    # The ErrorController route (handles 404/500 error things); it should
    # likely stay at the top, ensuring it can always be resolved
    map.connect('/error/{action}', controller='error')
    map.connect('/error/{action}/{id}', controller='error')

    # CUSTOM ROUTES HERE

    map.connect('home', '/', controller='things', action='index', title='Home')

    #map.connect('/{controller}/{action}')
    #map.connect('/{controller}/{action}/{id}')

    map.connect('things', '/things', controller='things', action='index')
    map.connect('form_new_thing', '/things/new', controller='things', action='new')
    map.connect('create_thing', '/things/create', controller='things', action='create')
    map.connect('show_thing', '/things/show/{uuid}', controller='things', action='show')

    return map
