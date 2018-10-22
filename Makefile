TEX = max_print_line=1048576 pdflatex -interaction=nonstopmode
MAIN = thesis
BIB = bibtex
IDX = makeglossaries


# LanguageTool is an Open Source proof­reading program for English
# , French, German, Polish, and more than 20 other languages.
LT_DL=https://languagetool.org/download/LanguageTool-3.7.zip
LT_FOLDER=~/lt
LT=~/lt/LanguageTool-3.7/languagetool-commandline.jar

.PHONY: all clean

all: $(MAIN).pdf

$(MAIN).pdf: *.tex
	$(TEX) $(MAIN)
	$(BIB) $(MAIN).aux
	$(TEX) $(MAIN)	
	
clean:
	find -regex '.*\.\(aux\|log\|lot\|lof\|bbl\|out\|toc\|blg\|brf\|ptc\|gz\|bcf\|run.xml\|fls\|dvi\|mtc\|mtc0\|maf\)'  -exec rm {} \; 	
	find .  -name  $(MAIN)-blx.bib  -exec rm {} \;

  
clean-figures:  
	find  Figures/chap*     -name *-converted-to.pdf   -exec rm {} \;
	find  Logo              -name *-converted-to.pdf   -exec rm {} \;



check:  
	checkcites --all $(MAIN).aux
