#!/usr/bin/env bash
set -eu
export TESTING=true

output=tests/tmp 

echo "///////////////////////////////////////////"
echo "             TAGGING TEMPLATE COPY"
echo "///////////////////////////////////////////"
echo
template=$(mktemp -d)
cp -rf . "${template}"
(
  cd "${template}" || exit 1
  git add . -A || true
  git commit -m "test" || true
  git tag 99.99.99 -m "test"
)
echo "Template copy located at ${template}"

echo
echo "///////////////////////////////////////////"
echo "             GENERATING PROJECT"
echo "///////////////////////////////////////////"
echo
rm -rf "${output}"
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
echo 
echo "             COPIER-ANSWERS"
cat .copier-answers.yml
echo
echo "             PROJECT STRUCTURE"
tree -a
