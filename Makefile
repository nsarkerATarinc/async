build_dir=./build

generate-pdf:
	mkdir -p $(build_dir)
	pdflatex -output-dir=$(build_dir) presentation.tex

final-pdf: generate-pdf
	cp $(build_dir)/presentation.pdf .

clean:
	rm -r $(build_dir)
	rm presentation.pdf
