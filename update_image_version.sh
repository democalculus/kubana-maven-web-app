#!/bin/bash

sed -i "s#image_version_update#${imageVersion}#g" maven_web_app_manifest_file.yml
cat maven_web_app_manifest_file.yml |grep  'eagunuworld'
