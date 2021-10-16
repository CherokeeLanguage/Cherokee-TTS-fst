#!/usr/bin/env -S bash

set -e
set -o pipefail

cd "$(dirname "$0")"

(
while read -r link; do
    wget --tries=0 --continue --no-directories --trust-server-names "$link"
done
) << EOT
https://www.nb.no/sbfil/talesyntese/no.ibm.talesyntese.tar.gz
EOT