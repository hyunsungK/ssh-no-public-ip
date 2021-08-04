#!/bin/bash

function build(){
    docker build -t ubuntu-ssh .
}

build
