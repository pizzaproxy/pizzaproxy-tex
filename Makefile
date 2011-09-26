all: show

edit:
	vim template.tex

e: edit

s: show

sd:
	okular template.pdf

show: pdf
	okular template.pdf

pdf: pdfindex
	pdflatex template.tex

pdfindex:
	pdflatex template.tex

makedirs:
	mkdir -p rendered

print:
	lpr template.pdf

600: makedirs pdf
	pdftoppm -png -scale-to-y 600 -scale-to-x 800 template.pdf template.tex600
	mv template.tex600*.png rendered

800: makedirs pdf
	pdftoppm -png -scale-to-y 800 -scale-to-x 1024 template.pdf template.tex800
	mv template.tex800*.png rendered

