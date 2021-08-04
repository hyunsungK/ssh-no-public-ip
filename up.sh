#!/bin/bash

function up(){
    docker run --rm -d -p 9999:22 --name ubuntu-test ubuntu-ssh 
}

up
