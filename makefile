default: groebner_lecture_notes.pdf

SRC = main.tex lec*.tex

groebner_lecture_notes.pdf: $(SRC)
	pdflatex -shell-escape main.tex
	mv main.pdf groebner_lecture_notes.pdf
	make clean_aux

clean_aux:
	rm *aux *bbl *blg *log *~ *pyg *out -f
