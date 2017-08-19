default: html

html: compiled_resume.html
compiled_resume.html: style.css resume.md
	pandoc --standalone --css=style.css \
	--from markdown \
	--to html \
	-o compiled_resume.html resume.md

pdf: style

clean:
	rm compiled_resume.html
