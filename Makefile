all:

install:
	install -D cloudflare-dynamic-dns-client \
	 $(DESTDIR)$(PREFIX)/usr/bin/cloudflare-dynamic-dns-client
	install -D -m644 usr/lib/systemd/system/cloudflare-dynamic-dns-client.service \
	 $(DESTDIR)$(PREFIX)/usr/lib/systemd/system/cloudflare-dynamic-dns-client.service
	install -D -m644 usr/lib/systemd/system/cloudflare-dynamic-dns-client.timer \
	 $(DESTDIR)$(PREFIX)/usr/lib/systemd/system/cloudflare-dynamic-dns-client.timer
	install -d $(DESTDIR)$(PREFIX)/etc
	cp --no-clobber etc/cloudflare-dynamic-dns-client.conf \
	 $(DESTDIR)$(PREFIX)/etc/
	chmod 600 $(DESTDIR)$(PREFIX)/etc/cloudflare-dynamic-dns-client.conf
