from os import environ
from flask import Flask
from config import ProductionConfig, TestingConfig, DevelopmentConfig


def create_app():
    app = Flask(__name__)

    if environ.get('WORK_ENV') == 'PROD':
        app.config.from_object(ProductionConfig)
    elif environ.get('WORK_ENV') == 'TEST':
        app.config.from_object(TestingConfig)
    else:
        app.config.from_object(DevelopmentConfig)

    with app.app_context():
        from . import routes

    return app
