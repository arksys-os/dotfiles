#!/bin/sh

echo -e "This script generates an Ed25519 SSH key pair and adds the private key to the SSH agent.\n"

read -p "Enter the name of your SSH key (without the .pub extension): " keyname

# Check if the key exists else add the key
if [[ -f ~/.ssh/$keyname && -f ~/.ssh/$keyname.pub ]]; then
    echo "SSH key already exists."
else
    echo "Generating a new SSH key..."
    read -p "Enter your email: " email
    ssh-keygen -t ed25519 -C "$email" -f ~/.ssh/$keyname

    # Initialize ssh-agent
    eval "$(ssh-agent -s)"

    # Add SSH key to the ssh-agent
    ssh-add ~/.ssh/$keyname
fi

# Print success message and display public key
echo -e "SSH private key has been successfully added to the ssh-agent on your local machine."
echo -e "You can now proceed to copy the public key to the remote server on the Git platform."
echo -e "This is your public key: "
cat ~/.ssh/$keyname.pub

# Provide instructions for testing SSH connection
echo -e "\nNext, you can test your SSH connection by running: 'ssh -T git@github.com' and verifying the fingerprint on your Git platform."
