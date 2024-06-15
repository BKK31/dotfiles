#!/bin/bash

if [[ $(bluetoothctl show | grep "Powered: no") ]]; then
    bluetoothctl power on
elif [[ $(bluetoothctl show | grep "Powered: yes") ]]; then
    bluetoothctl power off
fi

