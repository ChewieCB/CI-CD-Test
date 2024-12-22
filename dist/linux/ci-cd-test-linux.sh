#!/bin/sh
echo -ne '\033c\033]0;CI-CD Test\a'
base_path="$(dirname "$(realpath "$0")")"
"$base_path/ci-cd-test-linux.x86_64" "$@"
