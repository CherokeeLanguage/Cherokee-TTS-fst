#!/usr/bin/env bash

set -e
set -o pipefail

cd "$(dirname "$0")"

(
while read -r dataset; do
    kaggle datasets download --force "$dataset" || exit 1
done
) << EOT
bryanpark/korean-single-speaker-speech-dataset
EOT
