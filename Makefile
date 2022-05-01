OUTPUT_DIR=build
FLAGS=-file-line-error -output-directory=$(OUTPUT_DIR) -shell-escape

compile: ./main.tex ./settings.sty ./tex/*.tex
	mkdir -p $(OUTPUT_DIR)
	xelatex $(FLAGS) ./main.tex
	biber ./build/main
	xelatex $(FLAGS) ./main.tex
	cp $(OUTPUT_DIR)/main.pdf ./thesis.pdf
	xelatex $(FLAGS) ./main.tex
	cp $(OUTPUT_DIR)/main.pdf ./thesis.pdf

