from flask import Blueprint
routes = Blueprint('routes', __name__)

from .auth import *
from .respond import * 