import logging

from pylons import request, response, session, tmpl_context as c
from pylons.controllers.util import abort, redirect_to

from thingsoup.lib.base import BaseController, render
from thingsoup.model import Thing
from thingsoup.model.meta import Session

log = logging.getLogger(__name__)

class ThingsController(BaseController):

    def __before__(self):
        self.thing_q = Session.query(Thing)

    def index(self):
        # Return a rendered template
        # or, return a response
        c.things = self.thing_q.all()
        return render('/things/index.mako')

    def create(self):
        # create a new object
        return 'dummy: object created'

    def new(self):
        # show new object form
        return render('/things/new.mako')

    def show(self, uuid):
        # show an object

        thing = self.thing_q.filter_by(uuid=uuid).first()
        if thing:
            c.thing = thing
            return render('/things/show.mako')
        else:
            abort(404)

