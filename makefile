install:
	brew install pandoc wkhtmltopdf

build: build-pdf build-html

build-pdf:
	pandoc --pdf-engine-opt=--enable-local-file-access -t html --css style.css -s readme.md -o readme.pdf

build-html:
	pandoc --pdf-engine-opt=--enable-local-file-access -t html --css style.css -s readme.md -o index.html
