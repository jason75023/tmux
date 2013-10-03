#!/bin/bash
tmux new -d -s ms
tmux neww -k -t ms:1 -n 'ms1'
tmux neww -k -t ms:2 -n 'ms2'
tmux send-keys -t ms1 "ssh 10.1.168.10" C-m
tmux send-keys -t ms2 "ssh 10.1.168.46" C-m
