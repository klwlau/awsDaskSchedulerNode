#!/bin/bash -x

cd ~
mkdir daskData
cd daskData

/usr/bin/tmux new-session -d -s jupyter
/usr/bin/tmux send-keys -t jupyter "/home/ubuntu/anaconda/bin/jupyter lab --ip=0.0.0.0" C-m

/usr/bin/tmux new-session -d -s dask_s
/usr/bin/tmux send-keys -t dask_s "/home/ubuntu/anaconda/bin/dask-scheduler" C-m
