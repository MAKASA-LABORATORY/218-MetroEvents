# Generated by Django 3.1.1 on 2023-03-23 06:27

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('metroevent', '0002_auto_20210320_2228'),
    ]

    operations = [
        migrations.AddField(
            model_name='event',
            name='event_pic',
            field=models.ImageField(default=1, upload_to='media/'),
            preserve_default=False,
        ),
    ]
