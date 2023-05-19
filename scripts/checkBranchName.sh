#!/usr/bin/env bash
LOCAL_BRANCH_NAME="$(git rev-parse --abbrev-ref HEAD)"

VALID_BRANCH_NAME_REGEX='^(main|development|((fix|feature|test|chore|poc|spike)\/.+))$'

MESSAGE="There is something wrong with your branch name. Branch names in this project must adhere to this contract: $VALID_BRANCH_NAME_REGEX. Your commit will be rejected. You should rename your branch (git branch -m new-name) to a valid name and try again."

if [[ ! $LOCAL_BRANCH_NAME =~ $VALID_BRANCH_NAME_REGEX ]]; then
    echo "$MESSAGE"
    echo "Valid branch names are 'main', 'develop' or any name that starts with fix/ or feature/ or test/ or chore/ or poc/ or spike and are followed by any string"
    exit 1
fi

exit 0