#!/usr/bin/env -S bash

set -e
set -o pipefail

cd "$(dirname "$0")"

(
while read -r link; do
    xdg-open "$link"
done
) << EOT
https://drive.google.com/file/d/19Wx6b-Wq49EJ9qVrH01J5aWok0GzIn13/view?usp=sharing
EOT
