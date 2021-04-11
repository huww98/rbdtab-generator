PHONY: install, uninstall
install: rbdmap-generator
	mkdir -p /etc/systemd/system-generators
	install -t /etc/systemd/system-generators rbdmap-generator
	install --mode=644 -t /etc/systemd/system units/*
	systemctl daemon-reload

uninstall:
	rm -f /etc/systemd/system-generators/rbdmap-generator
	rm -f /etc/systemd/system/rbdmap-pre.target
	rm -f /etc/systemd/system/rbdmap.target
	systemctl daemon-reload;
