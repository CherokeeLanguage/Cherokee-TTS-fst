#!/usr/bin/env -S bash

set -e
set -o pipefail

cd "$(dirname "$0")"

(
while read -r link; do
    wget --tries=0 --continue --no-directories --trust-server-names "$link"
done
) << EOT
https://datashare.ed.ac.uk/bitstream/handle/10283/2353/SiwisFrenchSpeechSynthesisDatabase.zip?sequence=3&isAllowed=y
EOT