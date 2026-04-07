#!/bin/bash
set -e

APP_DIR="/opt/github-ec2-cicd/app"

cd "$APP_DIR"

if command -v dnf >/dev/null 2>&1; then
  dnf install -y python3 python3-pip
else
  yum install -y python3 python3-pip
fi

python3 -m venv venv

source venv/bin/activate
pip install --upgrade pip
pip install -r requirements.txt