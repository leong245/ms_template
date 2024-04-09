MS = ms
PREAMBLE = preamble

$(MS).pdf: $(MS).tex $(PREAMBLE).tex *.bib
	##texi2pdf $(MS).tex
	pdflatex $(MS)
	pdflatex $(MS)
	bibtex $(MS)
	pdflatex $(MS)
	pdflatex $(MS)

ms_pnas.pdf: *.tex *.bib
	texi2pdf -I pnas/pnas_research_article/ ms_pnas.tex

clean:
	rm -f *.{aux,bbl,blg,log,out}

fresh: clean
	rm -f $(MS).pdf ms_pnas.pdf
