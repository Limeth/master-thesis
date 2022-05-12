# Output dir must be set to current dir, otherwise plotting with gnuplot doesn't work
OUTPUT_DIR=.
FLAGS=-file-line-error -output-directory=$(OUTPUT_DIR) -shell-escape

compile: ./main.tex ./settings.sty ./tex/*.tex
	mkdir -p $(OUTPUT_DIR)
	xelatex $(FLAGS) ./main.tex
	biber $(OUTPUT_DIR)/main
	xelatex $(FLAGS) ./main.tex
	cp $(OUTPUT_DIR)/main.pdf ./thesis.pdf
	xelatex $(FLAGS) ./main.tex
	cp $(OUTPUT_DIR)/main.pdf ./thesis.pdf

clean:
	bash -c 'rm -f main.{mtc*,maf,bcf,out,pdf,pgf-plot*,run*,toc,bbl,blg}'
