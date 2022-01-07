all:
	@PACKAGER='Johan Stenqvist <johan@stenqvist.net>' makepkg -f

clean:
	@rm -rf pkg/ src/ *.log *.pkg.tar.xz c64-debugger-*

update-sums:
	@updpkgsums	
