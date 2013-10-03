#!/bin/bash
tmux new -d -s pgsql
tmux neww -k -t pgsql:1 -n 'pgsql1'
tmux neww -k -t pgsql:2 -n 'pgsql2'
tmux send-keys -t pgsql1 "ssh 10.1.168.41" C-m
tmux send-keys -t pgsql2 "ssh 10.1.168.39" C-m
