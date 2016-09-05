cd ~/dashboard
#session='Work'
#window=${session}:0
#pane=${window}.1:
tmux new-session -d -s 'Work'
tmux rename-window 'Servers'
tmux split-window -h
tmux select-pane -t 0
tmux split-window -v
tmux select-pane -t 0
tmux send-keys -t 0 'npm run start' Enter
tmux select-pane -t 1
tmux send-keys -t 1 'mongod' Enter
tmux select-pane -t 2
tmux send-keys -t 2 'npm run es6' Enter
tmux new-window -n 'Database'
tmux send-keys -t 0 'mongo' Enter
tmux new-window -n 'Git'
tmux attach-session -d -t 'Work'
