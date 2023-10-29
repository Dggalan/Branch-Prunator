#!/bin/bash
for dir in */; do
  echo "Checking $dir"
  cd "$dir"
  if git rev-parse --is-inside-work-tree > /dev/null 2>&1; then
    echo "Prunning $dir"
    git checkout develop && git fetch -p && git branch -vv | awk '/: gone]/{print $1}' | xargs git branch -D
  else
    echo "$dir is not a git repository"
  fi
  cd ..
done

#!/bin/bash

counter=0
for dir in */; do
  echo "Checking $dir"
  cd "$dir"
  if git rev-parse --is-inside-work-tree > /dev/null 2>&1; then
    echo "Prunning $dir"
    git checkout develop && git fetch -p && git branch -vv | awk '/: gone]/{print $1}' | xargs git branch -D
    pruned=$(git branch -vv | awk '/: gone]/{print $1}' | wc -l)
    counter=$((counter + pruned))
  else
    echo "$dir is not a git repository"
  fi
  cd ..
done

echo "Total branches pruned: $counter, have a nice day."


