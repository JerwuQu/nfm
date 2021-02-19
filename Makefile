SCRIPTS=nfm nfm-rofi-mpv-example nfm-fzf-curl-example

.PHONY: check
check: $(SCRIPTS)
	shellcheck $(SCRIPTS)

# TODO: install?
