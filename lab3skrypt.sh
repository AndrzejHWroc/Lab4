#!/bin/bash
git commit
git commit

git checkout -b bugFix

git branch bugFix
git checkout bugFix
git commit
git checkout main
git commit
git merge bugFix

git branch bugFix
git checkout bugFix
git commit
git checkout main
git commit
git checkout bugFix
git rebase main

git checkout C4

git checkout bugFix^

git checkout HEAD^
git branch -f main C6
git branch -f bugFix HEAD^

git reset HEAD^
git checkout pushed
git revert pushed

git cherry-pick C3 C4 C7

git rebase -i HEAD~4

git checkout main
git cherry-pick bugFix

ggggggg

ggggggg

git tag v0 c1
git tag v1 c2
git checkout v1

git describe
git describe HEAD
git describe main
git describe c5
git describe c3
git describe side
git commit