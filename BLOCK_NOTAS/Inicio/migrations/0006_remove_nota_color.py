# Generated by Django 2.2.3 on 2022-10-11 03:02

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('Inicio', '0005_auto_20221010_2230'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='nota',
            name='color',
        ),
    ]
