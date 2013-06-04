paper:
	xelatex paper.tex
	-bibtex paper.aux
	xelatex paper.tex
	xelatex paper.tex

clean:
	find . -name '*.aux' -print0 | xargs -0 rm -rf
	rm -rf *.lof *.log *.lot *.out *.toc *.bbl *.blg *.thm
depclean: clean
	rm -rf *.pdf
