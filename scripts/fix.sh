#!/bin/bash

PATTERN1="<meta name=\"dc.created\" content=\"[-0-9]\+\">"
REPLACE1="<meta name=\"author\" content=\"co\">\n<meta name=\"keywords\" content=\"API, Documentation, IWBUMS, Java, Javadoc, Lua, Mod, Modding, Project Zomboid, Pz , Zomboid\">\n<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n&"

PATTERN2="<meta name=\"description\" content=\"\([^\"]\+\)\">"
REPLACE2="<meta name=\"description\" content=\"Javadoc Project Zomboid Modding API \1\">"

find 38.30 39.67 40.43 41.56 -type f -name '*.html' -print -exec sed -i -e "s/${PATTERN1}/${REPLACE1}/" -e "s/${PATTERN2}/${REPLACE2}/" {} \;
