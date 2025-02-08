MAIN_FILENAME = main
MAIN_TEX = $(MAIN_FILENAME).tex
OUT_DIR = out
MAIN_PDF = $(MAIN_FILENAME).pdf

.PHONY: clean pdf

pdf: $(MAIN_PDF)

$(MAIN_PDF): $(MAIN_TEX) *.tex
	latexmk -pdf -jobname=$(MAIN_FILENAME) -output-directory=$(OUT_DIR) $(MAIN_TEX)

clean:
	find . -type d -name 'out' -exec rm -rf {} +