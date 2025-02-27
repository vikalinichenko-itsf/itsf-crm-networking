#!/usr/bin/env bash

set -e

./bin/terraform --version
./bin/terraform destroy $@