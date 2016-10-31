###############################################################################
# Description: The shell command line argument parser - clap
# Author: John Deng (john.deng@outlook.com)
#
# Copyright (c) 2015 John Deng (john.deng@outlook.com)
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
###############################################################################
# clap.sh is the shell command line argument parser
# you can source to any shell script for typing any arguments and using it 
# in your shell script
# e.g.
# on top of example.sh, just add source clap.sh
# #!/bin/bash
# source clap.sh
# ...
# if [ "$arg1" == "var1" ]; then
#     do something ...
# fi
# if [ "$rebuild" == "rebuild" ]; then
#     do something ...
# fi
#
# example.sh rebuild arg1=var1
#
###############################################################################
CLAP_VERSION=1.0.0

function showVersion()
{
    echo -e "

    ::'######::'##::::::::::'###::::'########::
    :'##... ##: ##:::::::::'## ##::: ##.... ##:
    : ##:::..:: ##::::::::'##:. ##:: ##:::: ##:
    : ##::::::: ##:::::::'##:::. ##: ########::
    : ##::::::: ##::::::: #########: ##.....:::
    : ##::: ##: ##::::::: ##.... ##: ##::::::::
    :. ######:: ########: ##:::: ##: ##::::::::
    ::.....:::........::..:::::..::..::::::::::  V$CLAP_VERSION

    Author: John Deng
    Updated: 2016-10-26
    
    "
}

###############################################################################
# Parse the command line
CMD_LINE=${0##*/}
while [ "$#" != "0" ]; do
    if [ "$1" == "plat" ]; then
        CMD_LINE="$CMD_LINE $1"
        shift
        plat="$1"
        CMD_LINE="$CMD_LINE $1"
        shift
    fi

    if [ `echo "$1" | grep -c "="` -gt 0 ]; then
        # echo $1
        read name value <<<$(IFS="="; echo $1)
        value=$1
        value=${value#*=}
        # echo name: $name value: $value
        export eval $(echo $name)="$value"

        numOfWord=`echo $value | wc -w`
        if [ $numOfWord -gt 1 ]; then
            CMD_LINE="$CMD_LINE $name='"
            CMD_LINE="$CMD_LINE${value}'"
        else
            CMD_LINE="$CMD_LINE $1"
        fi

        shift
    else
        if [ "$#" != "0" ]; then
            export eval $(echo $1)="$1"
            CMD_LINE="$CMD_LINE $1"
            shift
        fi
    fi

done
export CMD_LINE
###############################################################################

#showVersion
echo "<clap 1.0.0>"

