apt-get --assume-yes install sysstat bc
cp ./ashutdown /usr/local/bin/
cp ./ashutdown.service /lib/systemd/system/
systemctl --no-reload --now enable /lib/systemd/system/ashutdown.service
