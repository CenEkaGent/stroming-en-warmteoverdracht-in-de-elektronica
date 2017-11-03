FILENAME=oud-examenvragen

all: pdf

pdf: bin/$(FILENAME).pdf

open: bin/$(FILENAME).pdf
	open bin/$(FILENAME).pdf

bin/$(FILENAME).pdf: $(wildcard *.tex)
	texfot pdflatex -output-directory bin -jobname $(FILENAME) main.tex
	texfot pdflatex -output-directory bin -jobname $(FILENAME) main.tex

clean:
	rm bin/*

export: bin/$(FILENAME).pdf
	cp bin/$(FILENAME).pdf ./