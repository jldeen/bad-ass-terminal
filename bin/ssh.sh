#!/bin/bash

ssh=$($SSH_CONNECTION | awk '{print $3}')

echo -n " #[fg=colour197]$ssh"
