#!/bin/bash

CDIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

. $CDIR/common.sh

$CDIR/non_acked_prs.py $REPO_NAME
