BASENAME = uso

PDFLATEX = pdflatex
BIBTEX = bibtex
MAKEINDEX = makeindex

PDF = $(addsuffix .pdf, $(BASENAME))
TEX = $(addsuffix .tex, $(BASENAME))
IDX = $(addsuffix .idx, $(BASENAME))
NLO = $(addsuffix .nlo, $(BASENAME))
NLS = $(addsuffix .nls, $(BASENAME))
IST = nomencl.ist
EXTRA_EXTENSIONS = .aux .log .lof .lot .bbl .out .toc .idx .ind .ilg \
		   .nlo .nls .blg
CLEAN_FILES = $(addprefix $(BASENAME), $(EXTRA_EXTENSIONS))
STY_DIR = sty

.PHONY: all

all: $(PDF) clean-tmp

container-build:
	docker run -it --user $(id -u):$(id -g) -v "$(shell pwd)/":/src sweisz/book-latex-container:latest bash -c "cd src; make"

.PHONY: $(PDF)
$(PDF):
	TEXINPUTS=$(STY_DIR)//: $(PDFLATEX) --shell-escape -interaction=scrollmode --src-specials $(BASENAME)
	#$(BIBTEX) $(BASENAME)
	$(MAKEINDEX) $(NLO) -s $(IST) -o $(NLS)
	TEXINPUTS=$(STY_DIR)//: $(PDFLATEX) --shell-escape -interaction=scrollmode --src-specials $(BASENAME)
	$(MAKEINDEX) $(IDX)
	@echo; echo; echo
	@echo "****************************************************"
	@echo "***** Ignore errors above. Check errors below. *****"
	@echo
	TEXINPUTS=$(STY_DIR)//: $(PDFLATEX) --shell-escape -interaction=scrollmode --src-specials $(BASENAME)

.PHONY: clean-tmp
clean-tmp:
	-rm -f $(CLEAN_FILES)
	-find . -name "*.aux" -exec rm -f {} \;
	-find . -name "*~" -exec rm -f {} \;

.PHONY: clean
clean: clean-tmp
	-rm -f $(PDF)
