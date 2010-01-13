from thingsoup.tests import *

class TestThingsController(TestController):

    def test_index(self):
        response = self.app.get(url(controller='things', action='index'))
        # Test response...
