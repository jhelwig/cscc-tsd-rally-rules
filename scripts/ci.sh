#!/bin/bash

set -e
set -x

SCRIPT_DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

"${SCRIPT_DIR}"/build-web-pdf.sh
"${SCRIPT_DIR}"/build-print-pdf.sh
