#!/bin/bash

git init --bare /srv/repos.git
touch /srv/repos.git/git-daemon-export-ok

git daemon  --verbose --enable=receive-pack --reuseaddr --base-path=/srv/repos.git  /srv/repos.git