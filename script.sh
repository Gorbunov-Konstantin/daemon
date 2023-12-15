g++ -o backup backup.cpp -lboost_system -lboost_filesystem
sudo cp backup_daemon /usr/local/bin/
sudo cp backup_config.json /etc/
sudo cp backup_daemon.service /etc/systemd/system/
sudo systemctl daemon-reload
sudo systemctl enable backup_daemon.service
sudo systemctl start backup_daemon.service
sudo systemctl status backup_daemon
sudo systemctl stop backup_daemon
