#!/bin/bash

echo "%wheel        ALL=(ALL)       NOPASSWD:  /bin/systemctl, /bin/lsof, /bin/date" >> /etc/sudoers
chmod 440 /etc/sudoers

mkdir -p /etc/sudoers.d
echo "%wheel        ALL=(ALL)       NOPASSWD:  /bin/systemctl, /bin/lsof, /bin/date" >> /etc/sudoers.d/sudoers
chmod 440 /etc/sudoers.d/sudoers
