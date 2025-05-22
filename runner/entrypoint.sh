#!/bin/bash
if [ ! -f .runner ]; then
    echo "Configuring the runner..."
    ./config.sh --url https://github.com/stdedwin-git/actions-sample2 --token APV6SBAZ2RESEQQFFQUMMNLIF6O3I --unattended --name $(hostname)
fi


./run.sh
