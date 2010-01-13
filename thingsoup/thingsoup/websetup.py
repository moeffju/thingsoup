# -*- coding: utf-8 -*-
"""Setup the thingsoup application"""
import logging

from thingsoup.config.environment import load_environment
from thingsoup import model
from thingsoup.model import meta

log = logging.getLogger(__name__)

def setup_app(command, conf, vars):
    """Place any commands to setup thingsoup here"""
    load_environment(conf.global_conf, conf.local_conf)

    # Create the tables if they don't already exist
    log.info("Creating tables …")
    meta.metadata.create_all(bind=meta.engine)
    log.info("Successfully set up.")

    log.info("Adding example thing …")
    thing = model.Thing(title="box of spaxen (12 pieces)", description="HERE BRE DRAGONS")
    meta.Session.add(thing)
    meta.Session.commit()
    log.info("Successfully added example thing.")
