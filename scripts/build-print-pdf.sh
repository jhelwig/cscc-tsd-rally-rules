#!/bin/bash

set -e
set -x

rm -rf build
mkdir -p build
mkdir -p output

pdflatex -file-line-error -output-dir=build -jobname=cscc-road-rally-rules_for-print "\def\compileforwebpdf{1} \input{road-rally-rules.tex}"
pdflatex -file-line-error -output-dir=build -jobname=cscc-road-rally-rules_for-print "\input{road-rally-rules.tex}"

cp -v build/*.pdf output/.
