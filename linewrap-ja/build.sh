#!/bin/bash

HERE=$(cd $(dirname $0); pwd)
cd $HERE

bundle exec asciidoctor-pdf \
  -r asciidoctor-pdf-cjk-kai_gen_gothic \
  -r asciidoctor-pdf-linewrap-ja \
  ../src/index.adoc \
  -o ../pdf/linewrap.pdf
