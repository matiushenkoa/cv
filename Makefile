PANDOC := pandoc
ENGINE := tectonic
TEMPLATE := templates/resume.latex

.PHONY: pdf pdf-em pdf-concise clean

define build_pdf
	mkdir -p pdf
	sed \
		-e '/^# Artem Matiushenko$$/,/^# Professional Summary$$/{' -e '/^# Professional Summary$$/!d' -e '}' \
		-e 's/→/->/g' \
		-e 's/≈/~/g' \
		$(1) | $(PANDOC) \
		--template=$(TEMPLATE) \
		--pdf-engine=$(ENGINE) \
		-o $(2)
endef

pdf:
	$(call build_pdf,cv.md,pdf/Artem_Matiushenko_CV.pdf)

pdf-em:
	$(call build_pdf,versions/engineering-manager.md,pdf/Artem_Matiushenko_EngineeringManager.pdf)

pdf-concise:
	$(call build_pdf,versions/concise.md,pdf/Artem_Matiushenko_Concise.pdf)

clean:
	rm -f pdf/*.pdf
