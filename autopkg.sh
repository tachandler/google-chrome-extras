#!/bin/sh
_pkg="google-chrome-extras"
_apps="contacts gmail tasks"
for _app in $_apps; do
  test -d  apps/$_app && cd apps/ && zip -q ../$_pkg-app-$_app.zip $_app/* && cd ..;
  test -f $_pkg-app-$_app.zip && unzip -l $_pkg-app-$_app.zip
done
