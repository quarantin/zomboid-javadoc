#!/bin/bash

cd "$(dirname "$(dirname "${0}")")"

SITEMAP='sitemap.txt'
BASEURL='https://zomboid-javadoc.com/'

find 38.30 39.67 40.43 41.65 41.78 -type f -name '*.html' | sed "s#^#${BASEURL}#" > "${SITEMAP}"

echo OK
