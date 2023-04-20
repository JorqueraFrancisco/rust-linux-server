#!/bin/bash

# wget https://www.dropbox.com/s/3mraw9li6oypw90/Facepunch.Sqlite.dll
# rm /home/steam/rust-dedicated/RustDedicated_Data/Managed/Facepunch.Sqlite.dll
# mv Facepunch.Sqlite.dll /home/steam/rust-dedicated/RustDedicated_Data/Managed

${APPDIR}/./RustDedicated -batchmode \
+server.ip ${SERVER_IP} \
+server.port ${SERVER_PORT} \
+server.level "Procedural Map" \
+server.hostname  ${SERVER_HOSTNAME} \
+server.identity ${SERVER_IDENTITY} \
+server.seed ${SERVER_SEED} \
+server.maxplayers ${SERVER_MAXPLAYERS} \
+server.url "http://yourwebsite.com" \
+server.headerimage "http://yourwebsite.com/serverimage.jpg" \
+server.worldsize ${SERVER_WORLDSIZE} \
+rcon.ip ${RCON_IP} \
+rcon.port ${RCON_PORT} \
+rcon.password ${RCON_PASSWORD} \
+rcon.web ${RCON_WEB} \
# +server.saveinterval ${SERVER_SAVEINTERVAL} \
# +server.tickrate ${SERVER_TICKRATE} \

