import cherrypy

from myapp import Root

cherrypy.config.update({
    'server.socket_host': '0.0.0.0',
    'server.socket_port': 8080,
})
cherrypy.quickstart(Root())
