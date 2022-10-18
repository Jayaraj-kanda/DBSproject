from django.db import models
from django.contrib.auth.models import AbstractUser

class CustomUser(AbstractUser):
    age = models.IntegerField(default=None,null=True)
    phone = models.BigIntegerField(default=None,null=True)
    USERNAME_FIELD = 'username'
    REQUIRED_FIELDS = ['age','phone']

    def __str__(self):
        return self.username
