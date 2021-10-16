#!/usr/bin/env bash

set -e
set -o pipefail

cd "$(dirname "$0")"

(
while read -r dataset; do
    dataset_track="$(echo "$dataset"|cut -f 2 -d '/')"
    if [ -f "$dataset_track" ]; then continue; fi
    kaggle datasets download "$dataset" || exit 1
    touch "$dataset_track"
done
) << EOT
bryanpark/korean-single-speaker-speech-dataset
EOT
