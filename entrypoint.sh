#!/bin/sh

mkdir -p /tempdata
cp -r ./* /tempdata/
exec docker run -v /tempdata:/data/ registry.gitlab.com/pandemics/docker publish "${INPUT_SOURCE}"
cp -r /tempdata/pandemics ./
