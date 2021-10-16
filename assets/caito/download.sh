#!/usr/bin/env -S bash

set -e
set -o pipefail

cd "$(dirname "$0")"

(
while read -r link; do
    wget --tries=0 --continue --no-directories --trust-server-names "$link"
done
) << EOT
https://data.solak.de/data/Training/stt_tts/de_DE.tgz
https://data.solak.de/data/Training/stt_tts/en_UK.tgz
https://data.solak.de/data/Training/stt_tts/en_US.tgz
https://data.solak.de/data/Training/stt_tts/es_ES.tgz
https://data.solak.de/data/Training/stt_tts/it_IT.tgz
https://data.solak.de/data/Training/stt_tts/uk_UK.tgz
https://data.solak.de/data/Training/stt_tts/ru_RU.tgz
https://data.solak.de/data/Training/stt_tts/fr_FR.tgz
https://data.solak.de/data/Training/stt_tts/pl_PL.tgz
EOT