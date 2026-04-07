#!/bin/bash
set -e

if systemctl list-unit-files | grep -q github-ec2-cicd; then
  systemctl stop github-ec2-cicd || true
fi