[Unit]
Description=PIVX's distributed currency daemon
After=network.target

[Service]
User=totum
Group=totum

Type=forking
PIDFile=/var/lib/totumd/totumd.pid

ExecStart=/usr/bin/totumd -daemon -pid=/var/lib/totumd/totumd.pid \
          -conf=/etc/totum/totum.conf -datadir=/var/lib/totumd

ExecStop=-/usr/bin/totum-cli -conf=/etc/totum/totum.conf \
         -datadir=/var/lib/totumd stop

Restart=always
PrivateTmp=true
TimeoutStopSec=60s
TimeoutStartSec=2s
StartLimitInterval=120s
StartLimitBurst=5

[Install]
WantedBy=multi-user.target
