DOCNAME=$1
DIR="tex/"

pdflatex $DIR$DOCNAME.tex
bibtex $DIR$DOCNAME.aux
pdflatex $DIR$DOCNAME.tex
pdflatex $DIR$DOCNAME.tex

# rm $DIR*.blg $DIR*.bbl $DIR*.aux $DIR*.log $DIR*.out $DIR*.toc
rm *.log *.aux

open $DOCNAME.pdf
