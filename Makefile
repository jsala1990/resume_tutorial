all: html

html: compiled_resume.html
compiled_resume.html: style.css resume.md
	pandoc --standalone -H style.css \
	--from markdown \
	--to html \
	-o compiled_resume.html resume.md

clean:
	rm compiled_resume.html
