#!/bin/sh

echo "Publishing: ${INPUT_SOURCE}"

docker run -v "${GITHUB_WORKSPACE}:/data/:rw" registry.gitlab.com/pandemics/docker publish

DIR="$(dirname "${INPUT_SOURCE}")/pandemics"
echo "::set-output name=pandemics-dir::${DIR}"
