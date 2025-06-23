default: compile-pdf

compile-pdf:
	typst compile --root . template/cv.typ

compile-png:
	@just compile-png-page 1
	@just compile-png-page 2

compile-png-page page:
	typst compile --root . --format png --pages {{ page }} template/cv.typ assets/cv_p{{ page }}.png
	oxipng assets/cv_p{{ page }}.png

format:
	typstyle -i lib.typ template/cv.typ
