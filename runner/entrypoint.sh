#!/bin/bash
if [ ! -f .runner ]; then
    echo "Configuring the runner..."
    ./config.sh --url https://github.com/stdedwin-git/actions-sample2 --token APV6SBDD7SMATGNHQBHGH6LIF5BRW --unattended --name $(hostname)
fi


./run.sh
