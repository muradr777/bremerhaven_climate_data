#!/bin/bash
pdflatex poster.tex
bibtex poster.aux
pdflatex poster.tex
pdflatex poster.tex

ls -1rt | tail -n+6 | grep -v pdf | grep -v tex | xargs rm
