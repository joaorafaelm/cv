install:
	brew install pandoc wkhtmltopdf

build:
	pandoc --pdf-engine-opt=--enable-local-file-access -t html --css style.css -s readme.md -o readme.pdf
	pandoc --pdf-engine-opt=--enable-local-file-access -t html --css style.css -s readme.md -o index.html

dev: build
	open index.html
