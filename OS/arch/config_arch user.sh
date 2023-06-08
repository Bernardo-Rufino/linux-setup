# Set up root password
passwd

# Set up a default user (change 'rufino' to your username)
echo "%wheel ALL=(ALL) ALL" > /etc/sudoers.d/wheel
useradd -m -G wheel -s /bin/bash rufino

# Exit WSL2, go to Arch.exe folder and run on Powershell (change 'rufino' to your username):
# Arch.exe config --default-user rufino