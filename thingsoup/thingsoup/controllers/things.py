import logging

from pylons import request, response, session, tmpl_context as c
from pylons.controllers.util import abort, redirect_to
from pylons.decorators.secure import authenticate_form

from thingsoup.lib.base import BaseController, render
from thingsoup.lib.helpers import flash

from thingsoup.model.thing import Thing
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

    @authenticate_form
    def create(self):
        # create a new object

        # TODO: validate and sanitize submitted data throughly
        dc_title = request.POST.getone('dc_title')
        dc_description = request.POST.getone('dc_description')

        thing = Thing(title=dc_title, description=dc_description)
        Session.add(thing)
        Session.commit()

        redirect_to('show_thing', uuid=thing.uuid)

    @authenticate_form
    def delete(self):
        # delete a thing

        # TODO: authorization (who should be able to delete things ?)
        # should things be deleted at all ?
        uuids = request.POST.getall('uuid')
        things = self.thing_q.filter(Thing.uuid.in_(uuids))

        for thing in things:
            Session.delete(thing)
        Session.commit()

        for uuid in uuids:
            flash('Deleted %s.' % uuid)

        redirect_to('index_things')

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

