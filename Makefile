PANDOC := pandoc
ENGINE := tectonic
SRC := cv.md
TEMPLATE := templates/resume.latex
OUT := pdf/Artem_Matiushenko_CV.pdf

.PHONY: pdf clean

pdf:
	mkdir -p pdf
	sed \
		-e '/^# Artem Matiushenko$$/,/^# Professional Summary$$/{' -e '/^# Professional Summary$$/!d' -e '}' \
		-e 's/→/->/g' \
		-e 's/≈/~/g' \
		$(SRC) | $(PANDOC) \
		--template=$(TEMPLATE) \
		--pdf-engine=$(ENGINE) \
		-o $(OUT)

clean:
	rm -f $(OUT)
