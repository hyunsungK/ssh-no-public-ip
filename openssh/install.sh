#!/bin/bash


function install_package(){
    apt install openssh-server -y
}


function make_ssh_directory(){
    mkdir -p /var/run/sshd
}

install_package
make_ssh_directory
