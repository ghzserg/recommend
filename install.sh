#!/bin/sh

PLUGIN_NAME=recommend

grep -q "include plugins/${PLUGIN_NAME}/${PLUGIN_NAME}.cfg" /opt/config/mod_data/plugins.cfg || exit 0

[ -f /opt/config/mod/.shell/0.sh ] && source /opt/config/mod/.shell/0.sh
[ -f /usr/data/zmod/zmod/.shell/0.sh ] && source /usr/data/zmod/zmod/.shell/0.sh

VERSION=$(cat version.txt 2>/dev/null)

[ "${VERSION}" == "" ] && VERSION=0
NEED_RESTART=0

[ "$VERSION" -lt 1 ] && echo "SAVE_VARIABLE VARIABLE=fix_scv VALUE=1" >/tmp/printer && NEED_RESTART=1
[ "$VERSION" -lt 2 ] && echo "SAVE_VARIABLE VARIABLE=fix_e0011 VALUE=1" >/tmp/printer && NEED_RESTART=1
[ "$VERSION" -lt 3 ] && echo "SAVE_VARIABLE VARIABLE=fix_e0017 VALUE=1" >/tmp/printer && NEED_RESTART=1
[ "$VERSION" -lt 4 ] && echo "SAVE_VARIABLE VARIABLE=force_md5 VALUE=1" >/tmp/printer && NEED_RESTART=1
[ "$VERSION" -lt 5 ] && echo "SAVE_VARIABLE VARIABLE=close_dialogs VALUE=2" >/tmp/printer && NEED_RESTART=1
[ "$VERSION" -lt 6 ] && echo "SAVE_VARIABLE VARIABLE=wifi VALUE=1" >/tmp/printer && NEED_RESTART=1
if [ "$VERSION" -lt 8 ] && [ ${AD5X} -eq 1 ]; then
    current_value=$(sed -n '/\[heater_bed\]/,/^\[.*\]/ { /^max_power/s/.*: *//p; }' /opt/config/printer.cfg | head -n1 | tr -d '\r\n')

    if [ "$current_value" != "" ] && [ "$current_value" != "0.6" ]; then
        sed -i '/\[heater_bed\]/,/^\[.*\]/ s/^\(max_power:.*\)$/#\1\nmax_power: 0.6/' /opt/config/printer.cfg
        echo "[heater_bed] set max_power: 0.6"
        NEED_RESTART=1
    elif [ "$current_value" = "" ]; then
        sed -i '/\[heater_bed\]/a max_power: 0.6' /opt/config/printer.cfg
        echo "[heater_bed] set max_power: 0.6"
        NEED_RESTART=1
    fi
fi
if [ "$VERSION" -lt 9 ]; then
    if ! grep -q max_temp /opt/config/mod_data/nozzle.cfg; then
        echo "[temperature_sensor weightValue]
max_temp: 1500" >/opt/config/mod_data/nozzle.cfg
        NEED_RESTART=1
    fi

fi
echo 9 >version.txt

echo "Plugin ${PLUGIN_NAME} installed"

[ "$NEED_RESTART" -eq 1 ] && echo "REBOOT" >/tmp/printer
