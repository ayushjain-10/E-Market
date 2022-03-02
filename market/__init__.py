from flask import Flask
from flask_sqlalchemy import SQLAlchemy
from flask_bcrypt import Bcrypt
from flask_login import LoginManager
import os
from market.config import Config



app = Flask(__name__)
# app.config['SQLALCHEMY_DATABASE_URI'] = "sqlite:///market.db"
# app.config['SECRET_KEY'] = "1275e186f427443a6ceb5c75"
app.config["SQLALCHEMY_DATABASE_URI"] = "postgresql://ijcfnlairzccmo:cc0fd0f8378b2b501a728591aeff2ce85189d4d6a51460febc7a8110fdf73884@ec2-34-196-231-34.compute-1.amazonaws.com:5432/d8k1rr26filatk"
app.config.from_object(Config)
app.secret_key = os.urandom(24)
db = SQLAlchemy(app)
bcrypt = Bcrypt(app)
login_manager = LoginManager(app)
login_manager.login_view = "login_page"
login_manager.login_message_category = "info"

from market import route
