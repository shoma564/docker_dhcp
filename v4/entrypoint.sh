#!/bin/ash

echo "Start container with parameter : $@"

trap sig_term SIGTERM

sig_term() {
    echo "CATCH SIGTERM"
    pkill -SIGTERM dhcpd
    wait
    exit 0
}

# Execute paramater.
exec "$@"

dhcpd -4 -f $DHCPIF &
wait
exit 1
