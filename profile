#!/bin/bash

# User specific aliases and functions

# echo $(pwd)

# add plugin
. $profile/plugin/ACM               # ACM
. $profile/plugin/blog              # blog
. $profile/plugin/dairy             # dairy
. $profile/plugin/dictionary        # dairy
. $profile/plugin/file              # file
. $profile/plugin/git               # file
. $profile/plugin/python-settings   # python
. $profile/plugin/special_g++       # special g++
# . $profile/plugin/temp              # special g++

export PATH=$HOME/software/bin:$PATH

# for goagent
export PYTHON_EGG_CACHE=$HOME/.python-eggs-cache

# markdown file
function oppt
{
    pandoc $1 -o $2 -t dzslides -s
    google-chrome $2
}

function refresh_profile
{
    source $HOME/.bash_profile
}

echo "[Main] add profile ..."
