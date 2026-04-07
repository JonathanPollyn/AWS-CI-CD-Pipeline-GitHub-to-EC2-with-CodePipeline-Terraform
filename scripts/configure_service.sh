#!/bin/bash
set -e

cp /opt/github-ec2-cicd/systemd/github-ec2-cicd.service /etc/systemd/system/github-ec2-cicd.service
systemctl daemon-reload
systemctl enable github-ec2-cicd