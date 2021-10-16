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
bryanpark/german-single-speaker-speech-dataset
bryanpark/greek-single-speaker-speech-dataset
bryanpark/spanish-single-speaker-speech-dataset
bryanpark/finnish-single-speaker-speech-dataset
bryanpark/french-single-speaker-speech-dataset
bryanpark/hungarian-single-speaker-speech-dataset
bryanpark/japanese-single-speaker-speech-dataset
bryanpark/dutch-single-speaker-speech-dataset
bryanpark/russian-single-speaker-speech-dataset
bryanpark/chinese-single-speaker-speech-dataset
EOT
