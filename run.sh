#!/bin/sh

# Default ansible-playbook command
CMD="ansible-playbook -i hosts site.yml"

# Check if "-t nvim" is included in the arguments, then add "-K"
for arg in "$@"; do
  if [ "$arg" = "-t" ]; then
    next_is_tag=1
  elif [ "$next_is_tag" = "1" ]; then
    if [ "$arg" = "nvim" ]; then
      CMD="$CMD -K"
    fi
    next_is_tag=0
  fi
done

# Execute ansible-playbook with the modified command and all original arguments
$CMD "$@"
