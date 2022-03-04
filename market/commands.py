import click
from flask.cli import with_appcontext

from market import db
from flask_login import login_user, logout_user, login_required, current_user

@click.command(name='create_tables')
@with_appcontext
def create_tables():
    db.create_all()