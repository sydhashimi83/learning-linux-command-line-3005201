#!/bin/bash

USERNAME=$1
GROUP=$2
HOME_DIR=$3
QUOTE=$4

sudo useradd -m -d $HOME_DIR -G sudo,adm,$GROUP -s /bin/bash $USERNAME
echo "$USERNAME:abc123" | sudo chpasswd
echo "$QUOTE" | sudo tee $HOME_DIR/quotes.txt
sudo chown $USERNAME:$USERNAME $HOME_DIR/quotes.txt

echo "User $USERNAME created successfully."
