#!/usr/bin/env bash
. ~/.profile
BRANCHES=$(gitlab-ci-branch --default_branches='develop$, master$, rc-patches$, release-[a-z]+$')
echo "Staged:"
git diff --cached --name-only # output staged files

echo ""
echo "brakeman:"
for branch in ${BRANCHES//,/ }; do echo $branch; pronto run --staged --commit="$branch" --runner=brakeman; done

echo ""
echo "reek:"
for branch in ${BRANCHES//,/ }; do echo $branch; pronto run --staged --commit="$branch" --runner=reek; done
