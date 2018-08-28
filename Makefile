default: anonymous.pdf lac.pdf

%.pdf: %.tex %.bib main*.tex
	pdflatex $*
	bibtex $*
	pdflatex $*
	pdflatex $*

anonymous.bib: bibliography-primary.bib bibliography-anonymous.bib
	cat $^ > $@

lac.bib: bibliography-primary.bib bibliography-glimmer.bib
	cat $^ > $@
