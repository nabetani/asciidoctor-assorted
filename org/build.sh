#!/bin/bash -eu

HERE=$(cd $(dirname $0); pwd)
cd $HERE

bundle exec asciidoctor-pdf \
  -r asciidoctor-pdf-cjk-kai_gen_gothic \
  ../src/index.adoc \
  -o ../pdf/org.pdf
