PHONY: install, uninstall
install: rbdtab-generator
	mkdir -p /etc/systemd/system-generators
	install -t /etc/systemd/system-generators rbdtab-generator
	systemctl daemon-reload

uninstall:
	if [ -f /etc/systemd/system-generators/rbdtab-generator ]; then \
		rm -f /etc/systemd/system-generators/rbdtab-generator && systemctl daemon-reload; \
	fi
