# references

BibTeX bibliographies of CSDMS-related references,
with examples of their use.
The bibfile **references.bib** contains the omnibus list of references
used in CSDMS proposals.

Build the examples with `make` (which runs `latexmk`).
For example,
```sh
make natbib
```
builds the "natbib" example,
producing **example-natbib.pdf**.
View the PDF with
```sh
make show example=natbib
```

Clean up the example with
```sh
make clean
```
