import click
from flask.cli import with_appcontext

from flask import render_template, redirect, url_for, flash, request
from market.models import Items, User
from market.forms import RegisterForm, LoginForm, PurchaseItemForm, SellItemForm
from market import db
from flask_login import login_user, logout_user, login_required, current_user

@click.command(name='create_tables')
@with_appcontext
def create_tables():
    db.create_all()