#!/bin/bash
set -e

systemctl restart github-ec2-cicd
systemctl status github-ec2-cicd --no-pager