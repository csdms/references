# Makefile to generate bibliography examples using latexmk.
#
# Use:
# 	$ make  # agu is default target
# 	$ make natbib
# 	$ make show example=agu

agu multibib natbib standard:
	latexmk -pdf example-$@

all: agu multibib natbib standard

show:
	latexmk -pv -pdf example-${example}.pdf

clean:
	latexmk -c

cleaner:
	latexmk -C

.PHONY: clean cleaner
