#!/bin/bash

./RustDedicated -batchmode \
+server.port ${SERVER_PORT} \
+server.queryport ${SERVER_QUERYPORT} \
+server.levelurl "https://www.dropbox.com/s/zblgbxb4xaa6ny4/edited.map?dl=1" \
+server.hostname  ${SERVER_HOSTNAME} \
+server.identity ${SERVER_IDENTITY} \
+server.seed ${SERVER_SEED} \
+server.maxplayers ${SERVER_MAXPLAYERS} \
+server.url "http://yourwebsite.com" \
+server.headerimage "http://yourwebsite.com/serverimage.jpg" \
+server.worldsize ${SERVER_WORLDSIZE} \
+rcon.port ${RCON_PORT} \
+rcon.password ${RCON_PASSWORD} \
+rcon.web ${RCON_WEB}
