#!/usr/bin/env bash

# First get the current pane command pid to get the full command with arguments
# cmd=$(pgrep -flaP `tmux display-message -p "#{pane_pid}"` | sed -E 's/^[0-9]+ ssh //')

# port=$(parse_ssh_port "$cmd")

# cmd=$(echo $cmd|sed 's/\-p '"$port"'//g')


# grab_ip=$( echo $cmd | ( echo ${SSH_CONNECTION%% *} )


# $grab_ip > test.txt

ssh_auth_sock=`tmux showenv | grep "^SSH_AUTH_SOCK"`
ssh_connection=`tmux showenv | grep "^SSH_CONNECTION"`
export ${ssh_auth_sock}
export ${ssh_connection}

echo -n "$ssh_connection"