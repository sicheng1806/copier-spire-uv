#!/usr/bin/env bash
set -eu
export TESTING=true

output=tests/tmp 
template=.

echo
echo "///////////////////////////////////////////"
echo "             GENERATING PROJECT"
echo "///////////////////////////////////////////"
echo
copier copy -f --trust "${template}" "${output}" \
    -d project_name="Template Testing" \
    -d project_description="A test project" \
    -d author="sicheng" \

echo
echo "///////////////////////////////////////////"
echo "             PROJECT RESULT"
echo "///////////////////////////////////////////"
echo
cd "${output}"
tree -a