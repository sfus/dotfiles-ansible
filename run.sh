#!/bin/sh

ansible-playbook -i hosts site.yml $*
