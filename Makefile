all: clean
	glib-compile-schemas src/schemas/
	cd src && zip -r tuxedo-keyboard-gnome-extension * && mv tuxedo-keyboard-gnome-extension.zip ..

install: uninstall all
	mkdir -p ~/.local/share/gnome-shell/extensions/tuxedo-keyboard-gnome-extension
	cp -r src/* ~/.local/share/gnome-shell/extensions/tuxedo-keyboard-gnome-extension
	
uninstall:
	rm -rf ~/.local/share/gnome-shell/extensions/tuxedo-keyboard-gnome-extension

clean:
	rm src/schemas/gschemas.compiled
	rm tuxedo-keyboard-gnome-extension.zip
