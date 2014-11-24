#!/bin/bash

echo "Starting Stunnel4"
service stunnel4 start

echo "Tailing logs"
tail -f /var/log/stunnel4/stunnel.log
