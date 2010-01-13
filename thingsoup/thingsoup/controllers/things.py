import logging

from pylons import request, response, session, tmpl_context as c
from pylons.controllers.util import abort, redirect_to

from thingsoup.lib.base import BaseController, render

log = logging.getLogger(__name__)

class ThingsController(BaseController):

    def index(self):
        # Return a rendered template
        #return render('/things.mako')
        # or, return a response
        return 'Goodbye, cruel world.'

    def create(self):
        # create a new object
        return 'dummy: object created'

    def new(self):
        # show new object form
        return 'dummy: new object form'

    def show(self):
        # show an object
        return 'dummy: details about object'
