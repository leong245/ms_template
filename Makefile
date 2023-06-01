MS = ms
PREAMBLE = preamble

$(MS).pdf: $(MS).tex $(PREAMBLE).tex $(MS).bib
	texi2pdf $(MS).tex

clean:
	rm -f $(MS).{aux,bbl,blg,log,out}

fresh: clean
	rm -f $(MS).pdf
