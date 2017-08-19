default: html

html: compiled_resume.html
compiled_resume.html: style.css resume.md
	pandoc -x-standalone --css=style.css \
	--from markdown \
	--to html \
	-o compiled_resume.html resume.md

pdf: style.css resume.md compiled_resume.html
	pandoc -x-standalone \
	--from html \
	--to pdf \
	-o compiled_resume.pdf resume.html

clean:
	rm compiled_resume.html
