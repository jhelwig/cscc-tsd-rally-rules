#!/bin/bash

set -e
set -x

rm -rf build
mkdir -p build
mkdir -p output

for x in 1 2; do
  pdflatex -file-line-error -output-dir=build -jobname=cscc-road-rally-rules "\def\compileforwebpdf{1} \input{road-rally-rules.tex}"
done

cp -v build/*.pdf output/.
