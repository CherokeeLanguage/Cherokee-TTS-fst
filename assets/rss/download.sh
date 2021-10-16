#!/usr/bin/env -S bash

set -e
set -o pipefail

cd "$(dirname "$0")"

(
while read -r link; do
    wget --tries=0 --continue --no-directories --trust-server-names "$link"
done
) << EOT
http://romaniantts.com/rssdb/data/RomanianDB_v.0.8.1.tgz
http://romaniantts.com/rssdb/data/elena.tgz
http://romaniantts.com/rssdb/data/georgiana.tgz
EOT