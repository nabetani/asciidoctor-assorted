#!/bin/bash -eu

HERE=$(cd $(dirname $0); pwd)
cd $HERE

bundle exec asciidoctor-pdf \
  -r asciidoctor/nabetani \
  ../src/index.adoc \
  -o ../pdf/nabetani.pdf
