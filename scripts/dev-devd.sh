#!/bin/sh

base="$(cd "$(dirname "$0")/.."; echo "$PWD")"
PATH="$PATH:/$base/bin"

set -x
cd "$base"
exec devd -p 8080 /=http://localhost:1313 /api/=http://localhost:8081/api/

