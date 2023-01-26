# Running prometheus as a service

# After extracting the tar.gz file from prometheus site
# First run and verify if its working

cp -r ./usr/local/bin/prometheus

sudo vi /etc/systemd/system/prometheus.service

[Unit]
Description = Prometheus Service
After=network.target

[Service]
Type=simple
ExecStart=/usr/local/bin/prometheus/prometheus --config.file=/usr/local/bin/prometheus/prometheus.yml

[Install]
WantedBy=multi-user.target

sudo service prometheus start
sudo service prometheus	status

sudo service prometheus stop
sudo service prometheus status
