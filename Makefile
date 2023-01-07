all:
	pdflatex slides.tex
	bibtex slides.aux
	pdflatex slides.tex
	xdg-open slides.pdf
