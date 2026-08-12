#!/bin/bash

echo "
//192.168.10.157/isos/	/media/Isos    cifs    rw,user,suid,auto,uid=1000,gid=1000,credentials=/home/shionn/.smbcredentials    0    0
//192.168.10.157/backups/	/media/Backups    cifs    rw,user,suid,auto,uid=1000,gid=1000,credentials=/home/shionn/.smbcredentials    0    0
//192.168.10.157/medias/	/media/Medias    cifs    rw,user,suid,auto,uid=1000,gid=1000,credentials=/home/shionn/.smbcredentials    0    0
//192.168.10.157/games/	/media/Games    cifs    rw,user,suid,auto,uid=1000,gid=1000,credentials=/home/shionn/.smbcredentials    0    0
//192.168.10.157/dl/	/media/Dl    cifs    rw,user,suid,auto,uid=1000,gid=1000,credentials=/home/shionn/.smbcredentials    0    0
//192.168.10.157/roms/	/media/Roms    cifs    rw,user,suid,auto,uid=1000,gid=1000,credentials=/home/shionn/.smbcredentials    0    0

192.168.10.157:/mnt/data/ludovic/	/media/Ludovic    nfs    defaults,auto    0    0
192.168.10.157:/mnt/data/shared/	/media/Shared    nfs    defaults,auto    0    0
192.168.10.157:/mnt/data-secure/ludovic/	/media/LudovicSecure    nfs    defaults,auto    0    0
" | sudo tee -a /etc/fstab > /dev/null


echo "[Unit]
Description=Automount network drive
After=local-fs.target syslog.target network.target

[Service]
Type=oneshot
Restart=on-failure
ExecStart=/usr/bin/mount -a

[Install]
WantedBy=multi-user.target" | sudo tee /etc/systemd/system/automount.service > /dev/null

sudo systemctl daemon-reload
sudo systemctl status automount.service

