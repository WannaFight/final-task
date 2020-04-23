#!/usr/bin/env bash

FILES=$(ls | wc -l)
WARN='\033[0;31m'
OK='\033[0;32m'
INFO='\033[0;36m'
NC='\033[0m'

function game {
  while true; do
    echo -e "${INFO}how many files in the current directory?${NC}"
    read guess

    if [[ $guess -eq $FILES ]]; then
      echo -e "${OK}you're right! there are $FILES files in the current directory${NC}"
      break
    elif [[ $guess -gt $FILES ]]; then
      echo -e "${WARN}nope, your guess ($guess) is too high! try again${NC}"
    else
      echo -e "${WARN}nope, your guess ($guess) is too low! try again${NC}"
    fi
  done
}

game
