#!/bin/bash

# https://stackoverflow.com/questions/3601515/how-to-check-if-a-variable-is-set-in-bash

DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null 2>&1 && pwd)"

export DIR