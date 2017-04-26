import cherrypy


class Root:
    @cherrypy.expose
    def index(self):
        return "Hello world!"
