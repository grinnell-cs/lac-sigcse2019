default: ert640.pdf

%.pdf: %.tex %.bib *.tex
	pdflatex $*
	bibtex $*
	pdflatex $*
	pdflatex $*

anonymous.bib: bibliography-primary.bib bibliography-anonymous.bib
	cat $^ > $@

lac.bib: bibliography-primary.bib bibliography-glimmer.bib
	cat $^ > $@

ert640.bib: bibliography-primary.bib bibliography-glimmer.bib
	cat $^ > $@
