#!/bin/bash

# User specific aliases and functions

# echo $(pwd)

# add plugin

. $profile/Plugin
. $profile/Plugin-python
. $profile/startup

# for goagent
export PYTHON_EGG_CACHE=$HOME/.python-eggs-cache


function refresh_profile
{
    source $HOME/.profile
}

# echo "[Main] add profile ..."
