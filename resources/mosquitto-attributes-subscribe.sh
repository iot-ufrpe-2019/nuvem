# Set ThingsBoard host to "demo.thingsboard.io" or "localhost"
THINGSBOARD_HOST="iotufrpe2019.ddns.net"

# Replace YOUR_ACCESS_TOKEN with one from Device details panel.
ACCESS_TOKEN="SukzRh1Dl3MPtPodPjwY"
# a porta padrão é 1883, por questões de segurança ela foi mudada para o ambiente da UFRPE
PORT="3881"

# Subscribes to attribute updates
mosquitto_sub -d -h $THINGSBOARD_HOST -p $PORT -t "v1/devices/me/attributes" -u "$ACCESS_TOKEN"
