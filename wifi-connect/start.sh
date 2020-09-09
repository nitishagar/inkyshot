#!/usr/bin/env bash
export DBUS_SYSTEM_BUS_ADDRESS=unix:path=/host/run/dbus/system_bus_socket

sleep 10
while [[ true ]]; do
  wget --spider http://google.com >/dev/null 2>&1

  if [ $? -ne 0 ]; then
      printf 'Starting WiFi Connect: SSID is Inkyshot\n'
      ./wifi-connect -a 600 -s Inkyshot -o 80
  fi

  sleep 60
done