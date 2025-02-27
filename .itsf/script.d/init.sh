#!/usr/bin/env bash

set -e

source ./.itsf/config/source.file
./bin/terraform --version
./bin/terraform init \
    -backend-config="bucket=${S3_BUCKET}" \
    -backend-config="key=${S3_KEY}" \
    -backend-config="secret_key=${S3_SECRET_KEY}" \
    -backend-config="access_key=${S3_ACCESS_KEY}"