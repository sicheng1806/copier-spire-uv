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
    
cd "${output}"
echo 
echo "             COPIER-ANSWERS"
cat .copier-answers.yml
echo
echo "             PROJECT STRUCTURE"
tree -a

echo
echo "///////////////////////////////////////////"
echo "             TESTING PROJECT"
echo "///////////////////////////////////////////"
echo
git init .
git add -A .
git commit -m "feat: Initial commit"
git tag v9.9.999 -m "test"
echo
echo ">>> Setting up Python environments"
uv sync > /dev/null 2>&1


# echo
# echo "///////////////////////////////////////////"
# echo "             UPDATING PROJECT"
# echo "///////////////////////////////////////////"
# echo
# echo uv.lock >> .gitignore
# git add .
# git commit -m "chore: commit before copier update"
# copier update -f --trust > /dev/null 2>&1

echo
echo "///////////////////////////////////////////"
echo "         CLEANUP TEMPLATE"
echo "///////////////////////////////////////////"
echo
echo ">>> Removing ${template}"
rm -rf "${template}"