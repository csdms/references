#
# Generate a sample CSDMS reference list.
#

name = example
biblio = references
targets = aux bbl blg dvi log ps pdf

$(name).pdf: $(name).tex $(biblio).bib
	latex $(name).tex
	bibtex $(name).aux
	latex $(name).tex
	latex $(name).tex
	dvips $(name).dvi
	ps2pdf $(name).ps

.phony: clean
clean:
	rm -f $(addprefix $(name)., $(targets)) *~
