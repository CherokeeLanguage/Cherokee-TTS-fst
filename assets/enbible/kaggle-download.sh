#!/usr/bin/env -S bash -x

cd "$(dirname "$0")"

PS1='$'
. ~/.bashrc
conda deactivate
conda activate Cherokee-TTS-fst

set -e
set -o pipefail

(
while read -r dataset; do
  echo $dataset
  dataset_track="$(echo "$dataset"|cut -f 2 -d '/')"
  kaggle datasets download "$dataset" || exit 1
done
) << EOT
bryanpark/the-world-english-bible-speech-dataset
EOT
