#!/bin/bash


function clean_package(){
    apt-get clean && \
        rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
}

clean_package
