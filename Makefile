SCRIPTS=nfm nfm-rofi-example

.PHONY: check
check: $(SCRIPTS)
	shellcheck $(SCRIPTS)

# TODO: install?
