TEX = xelatex
BIB = bibtex
SRC = slides

.PHONY: all clean quick

all: $(SRC).pdf

$(SRC).pdf: $(SRC).tex
	$(TEX) $(SRC)
	-$(BIB) $(SRC)
	$(TEX) $(SRC)
	$(TEX) $(SRC)

quick:
	$(TEX) $(SRC)

clean:
	rm -f $(SRC).{aux,bbl,bcf,blg,log,nav,out,run.xml,snm,toc,vrb,pdf}
