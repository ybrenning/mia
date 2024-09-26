DOCNAME=$1
DIR="tex/"

pdflatex -output-directory=.. $DIR$DOCNAME.tex
bibtex $DIR$DOCNAME.aux
pdflatex -output-directory=.. $DIR$DOCNAME.tex
pdflatex -output-directory=.. $DIR$DOCNAME.tex

# rm $DIR*.blg $DIR*.bbl $DIR*.aux $DIR*.log $DIR*.out $DIR*.toc
rm *.log *.aux

open $DOCNAME.pdf
