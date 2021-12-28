#!/bin/sh -l

okctl login --token $1
okctl deploy -i $2 --port 3000 --name onkube-website --public --cnames www.onkube.com
