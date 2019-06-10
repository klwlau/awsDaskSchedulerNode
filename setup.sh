#!/bin/bash -x

mkdir daskData
cd daskData

sudo -u ubuntu /usr/bin/tmux new-session -d -s jupyter
sudo -u ubuntu /usr/bin/tmux send-keys -t jupyter "/home/ubuntu/anaconda/bin/jupyter lab --ip=0.0.0.0 --allow-root" C-m

sudo -u ubuntu /usr/bin/tmux new-session -d -s dask_s
sudo -u ubuntu /usr/bin/tmux send-keys -t dask_s "/home/ubuntu/anaconda/bin/dask-scheduler" C-m
