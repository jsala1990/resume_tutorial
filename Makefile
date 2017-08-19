default: html

html: clean src/style.css src/resume.md
	pandoc --standalone --css=../src/style.css \
	--from markdown \
	--to html \
	-o output/compiled_resume.html src/resume.md

clean:
	rm -rf output
	mkdir output
