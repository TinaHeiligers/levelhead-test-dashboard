#!/bin/bash

# usage: ./deploy.sh

NAME=admin-dashboard
# EB_BUCKET=admin.levelheadapp.com
EB_BUCKET=levelhead-dashboard-staging

npm run build

aws configure

aws s3 cp --recursive ./build/ s3://$EB_BUCKET/
