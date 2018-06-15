#! /bin/bash
current_branch=`git symbolic-ref HEAD | cut -d/ -f3`
echo "$current_branch"

for i in `git branch`; 
do 
     git checkout $i && git cherry-pick $current_branch; 
done

git push --all
