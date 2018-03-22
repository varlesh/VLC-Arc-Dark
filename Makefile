INSTALLDIR=$(DESTDIR)/usr/share/vlc/skins2
RM = rm -rf

all:

install: local

clear:
	$(RM) $(INSTALLDIR)/Arc-Dark.vlt
	$(RM) $(INSTALLDIR)/Arc-Dark-Fixed-Size.vlt
local:
	find Arc-Dark.vlt -type f -exec install -Dm644 '{}' "$(INSTALLDIR)/{}" \;
	find Arc-Dark-Fixed-Size.vlt -type f -exec install -Dm644 '{}' "$(INSTALLDIR)/{}" \;

uninstall: clear
