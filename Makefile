SHELL=/bin/bash

all: nj.pdf

nj.pdf: nj.tex
	latexmk -pdf -shell-escape $<
	
clean:
	latexmk -c

clean-all:
	latexmk -C

.PHONY: all clean clean-all
