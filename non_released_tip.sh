#!/bin/bash

CDIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

. $CDIR/common.sh

if [ "$LAST_TAG" = "$DESC_TAG" ]; then
    echo "OK: Tip of master is tagged"
else
    # $DESC_TAG is tag.nbofcommits.sha
    echo "FAIL: There are non-released commits. Draft a release now!"
    echo "ACTION: Release this https://github.com/DataDog/$REPO_NAME/compare/$LAST_TAG...master"
fi
