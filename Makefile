examples: example.dvi example.pdf

example.dvi: example.tex *.cls *.sty
	latex example

example.pdf: example.tex *.cls *.sty
	pdflatex example

clean:
	rm -f example.dvi example.pdf example.aux example.log example.out ??*~
