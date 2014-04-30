#!/bin/bash
#
# Calculates the SHA1 and MD5 hashes for the registry.
#

function calc() {
  local file=$1
  sha1sum $file | cut -d" " -f1 > "$file".sha1
  md5sum $file | cut -d" " -f1 > "$file".md5
}

calc plugins.json

