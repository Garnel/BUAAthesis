paper:
	xelatex 39211522毛光明毕业论文.tex
	-bibtex 39211522毛光明毕业论文.aux
	xelatex 39211522毛光明毕业论文.tex
	xelatex 39211522毛光明毕业论文.tex

clean:
	find . -name '*.aux' -print0 | xargs -0 rm -rf
	rm -rf *.lof *.log *.lot *.out *.toc *.bbl *.blg *.thm
depclean: clean
	rm -rf *.pdf
