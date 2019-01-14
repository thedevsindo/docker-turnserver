#!/bin/bash

echo "Starting TURN/STUN server"

/usr/bin/turnserver --no-tls --no-dtls --lt-cred-mech -a -v -L 0.0.0.0 --server-name "${TURN_SERVER_NAME}" --static-auth-secret="${TURN_SECRET}" -p ${TURN_PORT} --min-port ${TURN_PORT_START} --max-port ${TURN_PORT_END} --lt-cred-mech ${TURN_EXTRA}
