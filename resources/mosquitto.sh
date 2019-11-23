#!/bin/sh
#######
# Ref.: https://thingsboard.io/docs/getting-started-guides/helloworld/#pushing-data-using-mqtt-coap-or-http
#
# é preciso ter os clientes MQTT instalados:
# no ubuntu: $ sudo apt-get install mosquitto-clients
#######
# Set ThingsBoard host to "demo.thingsboard.io" or "localhost"
THINGSBOARD_HOST="iotufrpe2019.ddns.net"

# Replace YOUR_ACCESS_TOKEN with one from Device details panel.
ACCESS_TOKEN="SukzRh1Dl3MPtPodPjwY"
# a porta padrão é 1883, por questões de segurança ela foi mudada para o ambiente da UFRPE
PORT="3881"

# Publish serial number and firmware version attributes
mosquitto_pub -d -h $THINGSBOARD_HOST -p $PORT -t "v1/devices/me/attributes" -u "$ACCESS_TOKEN" -f "mosquitto-attributes-data.json"

# Publish timeseries data as an object without timestamp (server-side timestamp will be used)
mosquitto_pub -d -h $THINGSBOARD_HOST -p $PORT -t "v1/devices/me/telemetry" -u "$ACCESS_TOKEN" -f "mosquitto-telemetry-data.json"

#######
# mosquitto_pub
# -d : enable debug messages.
# -h : mqtt host to connect to. Defaults to localhost.
# -p : network port to connect to. Defaults to 1883. 
# -t : mqtt topic to publish to.
# -u : provide a username (requires MQTT 3.1 broker)
# -f : send the contents of a file as the message.
# --insecure : do not check that the server certificate hostname matches the remote
#######