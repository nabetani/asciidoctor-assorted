#!/bin/bash -eu

HERE=$(cd $(dirname $0); pwd)
cd $HERE

bundle exec asciidoctor-pdf \
  -r asciidoctor-pdf-linewrap-ja \
  -r asciidoctor/pdf/cjk/kai_gen_gothic/theme_loader \
  ../src/index.adoc \
  -o ../pdf/linewrap.pdf
