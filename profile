#!/bin/bash

# User specific aliases and functions

# echo $(pwd)

# add plugin

. $profile/Plugin

export PATH=$HOME/software/bin:$PATH

# for goagent
export PYTHON_EGG_CACHE=$HOME/.python-eggs-cache

# markdown file
function oppt
{
    pandoc $1 -o $2 -t dzslides -s
    google-chrome $2
}

function workers
{
    sudo systemctl start httpd.service
    sudo systemctl start mysqld.service
}

function refresh_profile
{
    source $HOME/.profile
}

echo "[Main] add profile ..."
