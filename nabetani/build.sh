#!/bin/bash

HERE=$(cd $(dirname $0); pwd)
cd $HERE

bundle exec asciidoctor-pdf \
  -r asciidoctor-pdf-cjk-kai_gen_gothic \
  -r asciidoctor/nabetani/prawn-linewrap-ja \
  -r asciidoctor/nabetani/abstractblock-xreftext \
  -r asciidoctor/nabetani/pdf-custom-property \
  -r asciidoctor/nabetani/horz-dlist \
  -r asciidoctor/nabetani/pdf-outline \
  ../src/index.adoc \
  -o ../pdf/nabetani.pdf
