# Generated by Django 3.0.4 on 2020-04-02 06:49

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('backend', '0001_initial'),
    ]

    operations = [
        migrations.AlterField(
            model_name='subscriber',
            name='servicecode',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='backend.Service'),
        ),
    ]