
# Instalation 

cf https://github.com/shionn/hypr-debian pour l'installation de hyprland sur debian

Si vous n'installer aucun autre DE vous aurez probablement besoin également de : 
~~~bash
sudo apt install xwayland xserver-xorg-video-all pulseaudio pipewire pipewire-pulse
~~~

Pour ce theme
~~~bash
sudo apt install kitty wofi waybar fonts-font-awesome  pavucontrol mako-notifier mpv hyprshot
sudo apt install power-profiles-daemon # pour l'icone de gestion d'energie
sudo apt install brightnessctl # pour hypridle
sudo apt install fonts-noto #utilisé dans certain outils
~~~

autre truc que j'aime avoir 
~~~bash
sudo apt install screen \
 psmisc # killall
 libnotify-bin # pour tester les notification avec notify-send
~~~

# a tester

## lancer gnome-shell sans gdm
~~~
sudo apt install gnome-shell
sudo systemctl disable gdm
dbus-run-session gnome-shell --wayland
~~~


# Ressource

- https://sw.kovidgoyal.net/kitty/
