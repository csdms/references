#
# Generate sample CSDMS reference lists using different bibliography
# packages ans styles.
#

standard = example-standard
biblio = references
targets = aux bbl blg dvi log ps pdf

$(standard).pdf: $(standard).tex $(biblio).bib
	latex $(standard).tex
	bibtex $(standard).aux
	latex $(standard).tex
	latex $(standard).tex
	dvips $(standard).dvi
	ps2pdf $(standard).ps

.phony: clean
clean:
	rm -f $(addprefix $(standard)., $(targets)) *~
