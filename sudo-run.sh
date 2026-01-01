#!/bin/sh

ansible-playbook -i hosts sudo-site.yml -K $*
