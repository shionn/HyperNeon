
echo "[Unit]
Description=Automount network drive
After=local-fs.target syslog.target network.target

[Service]
Type=oneshot
Restart=on-failure
ExecStart=/usr/bin/mount -a

[Install]
WantedBy=multi-user.target" | sudo tee /etc/systemd/system/automount.service

sudo systemctl daemon-reload
sudo systemctl status automount.service

