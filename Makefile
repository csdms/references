#
# Generate sample CSDMS reference lists using different bibliography
# packages ans styles.
#

standard = example-standard
natbib = example-natbib
biblio = references
targets = aux bbl blg dvi log ps pdf

all: $(standard).pdf $(natbib).pdf

$(standard).pdf: $(standard).tex $(biblio).bib
	latex $(standard).tex
	bibtex $(standard).aux
	latex $(standard).tex
	latex $(standard).tex
	dvips $(standard).dvi
	ps2pdf $(standard).ps

$(natbib).pdf: $(natbib).tex $(biblio).bib
	latex $(natbib).tex
	bibtex $(natbib).aux
	latex $(natbib).tex
	latex $(natbib).tex
	dvips $(natbib).dvi
	ps2pdf $(natbib).ps

.phony: clean
clean:
	rm -f $(addprefix $(standard)., $(targets)) *~
	rm -f $(addprefix $(natbib)., $(targets)) *~
