docker cp influx-dataset.tar.gz influxdb:influx-dataset.tar.gz
docker exec influxdb tar -xf influx-dataset.tar.gz
docker exec influxdb influxd restore -portable backupdb
