# -*- coding: utf-8 -*-

from django.db import models

from ngomm.models.instances import InstanceNode
from ngoutils.models import DjangoModelNodeAbstractBase

from .app import Model, Fixture, View, App
from .personas import User

ModelNode = InstanceNode.make_class_from_django_model(Model, 'https://numengo.org/vishuda#/$defs/nodes/$defs/ModelNode', module=__name__)
FixtureNode = InstanceNode.make_class_from_django_model(Fixture, 'https://numengo.org/vishuda#/$defs/nodes/$defs/FixtureNode', module=__name__)
ViewNode = InstanceNode.make_class_from_django_model(View, 'https://numengo.org/vishuda#/$defs/nodes/$defs/ViewNode', module=__name__)
AppNode = InstanceNode.make_class_from_django_model(App, 'https://numengo.org/vishuda#/$defs/nodes/$defs/AppNode', module=__name__)
UserNode = InstanceNode.make_class_from_django_model(User, 'https://numengo.org/vishuda#/$defs/nodes/$defs/UserNode', module=__name__)


class DjangoModelNodeNode(DjangoModelNodeAbstractBase):
    _object_node = ModelNode
    _django_model = Model
    _model_key = 'model'
    model = models.ForeignKey(Model, on_delete=models.CASCADE)


class DjangoFixtureNode(DjangoModelNodeAbstractBase):
    _object_node = FixtureNode
    _django_model = Fixture
    _model_key = 'fixture'
    fixture = models.ForeignKey(Fixture, on_delete=models.CASCADE)


class DjangoViewNode(DjangoModelNodeAbstractBase):
    _object_node = ViewNode
    _django_model = View
    _model_key = 'view'
    view = models.ForeignKey(View, on_delete=models.CASCADE)


class DjangoAppNode(DjangoModelNodeAbstractBase):
    _object_node = AppNode
    _django_model = App
    _model_key = 'app'
    app = models.ForeignKey(App, on_delete=models.CASCADE)


class DjangoUserNode(DjangoModelNodeAbstractBase):
    _object_node = UserNode
    _django_model = User
    _model_key = 'app'
    user = models.ForeignKey(User, on_delete=models.CASCADE)

