FROM cm2network/steamcmd:root

ENV APPDIR "${HOMEDIR}/steamcmd/rust-server"

RUN set -x \
    && apt-get update \
	&& apt-get install -y --no-install-recommends --no-install-suggests \
		wget=1.21-1+deb11u1 \
		ca-certificates=20210119 \
		lib32z1=1:1.2.11.dfsg-2+deb11u1 \       
    && ./steamcmd.sh \
        +force_install_dir "${APPDIR}" \
        +login anonymous \
        +app_update 258550 validate \ 
        +quit

COPY ./etc ${APPDIR}

RUN chmod +x "${APPDIR}"/entry.sh

WORKDIR ${APPDIR}

# CMD ["bash", "entry.sh"]