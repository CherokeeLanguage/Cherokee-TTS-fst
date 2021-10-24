#!/usr/bin/env -S bash

set -e
set -o pipefail

cd "$(dirname "$0")"

(
while read -r link; do
    xdg-open "$link"
done
) << EOT
https://drive.google.com/open?id=1f7bIQfwWdFOxeaYzs5Cw-HTcA8uwQ8qp
EOT
