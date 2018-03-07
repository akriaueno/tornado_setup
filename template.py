# -*- coding: utf-8 -*-
import tornado.web
import tornado.ioloop
import os

from  tornado.options import define, options, parse_command_line

define('port', default=8888)


class BaseHandler(tornado.web.RequestHandler):
    # Write common features here.
    pass
    

class MainHandler(BaseHandler):
    def get(self):
        self.render("index.html")


class Application(tornado.web.Application):
    def __init__(self):
        HANDLERS = [
            (r"/", MainHandler),
        ]
        BASE_DIR = os.path.dirname(__file__)
        SETTINGS = dict(
            static_path=os.path.join(BASE_DIR, 'static'),
            template_path=os.path.join(BASE_DIR, 'templates'), 
            debug=True,
        )
        tornado.web.Application.__init__(self, HANDLERS, **SETTINGS)


def main():
    tornado.options.parse_command_line()
    app = Application()
    app.listen(options.port)
    tornado.ioloop.IOLoop.current().start()

if __name__ == "__main__":
    main()

