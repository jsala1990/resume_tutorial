default: html

html: clean src/style.css src/resume.md
	pandoc --standalone --css=../src/style.css \
	--from markdown \
	--to html \
	-o output/compiled_resume.html src/resume.md

html_example: clean src/style.css examples/salazar_resume.md
	pandoc --standalone --css=../src/style.css \
	--from markdown \
	--to html \
	-o output/compiled_resume.html examples/salazar_resume.md

clean:
	rm -rf output
	mkdir output
