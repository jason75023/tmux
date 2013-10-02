#!/bin/bash
tmux new -d -s mp
tmux neww -k -t mp:1 -n 'mp1'
tmux neww -k -t mp:2 -n 'mp2'
tmux neww -k -t mp:3 -n 'mp3'
tmux neww -k -t mp:4 -n 'mp4'
tmux neww -k -t mp:5 -n 'mp5'
tmux neww -k -t mp:6 -n 'mp6'
tmux send-keys -t mp1 "ssh 10.1.168.27" C-m
tmux send-keys -t mp2 "ssh 10.1.168.23" C-m
tmux send-keys -t mp3 "ssh 10.1.168.26" C-m
tmux send-keys -t mp4 "ssh 10.1.168.36" C-m
tmux send-keys -t mp5 "ssh 10.1.168.34" C-m
tmux send-keys -t mp6 "ssh 10.1.168.37" C-m

