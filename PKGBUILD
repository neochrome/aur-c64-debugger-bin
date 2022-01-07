# Maintainer: Johan Stenqvist <johan@stenqvist.net>
pkgname=c64-debugger-bin
pkgver=0.64.58.6
pkgrel=1
epoch=
pkgdesc="Commodore 64 and Atari XL/XE debugger that works in real time"
arch=('x86_64')
url="https://sourceforge.net/projects/c64-debugger/"
license=('MIT')
groups=()
depends=(
	'alsa-lib'
	'gtk3'
	'xcb-util'
)
makedepends=(
	'upx'
)
checkdepends=()
optdepends=()
provides=('c64-debugger')
conflicts=('c64-debugger')
replaces=()
backup=()
options=(
	'!strip'
)
changelog=
source=(
	"c64-debugger-$pkgver.tar.gz::https://sourceforge.net/projects/c64-debugger/files/C64-65XE-NES-Debugger-v$pkgver-linux-x64.tar.gz/download"
)
noextract=()
sha256sums=('d6daf7089c4518001d76e86470a810f0dff2255e4d5b7a86e5b5364ccd523e71')
validpgpkeys=()
build() {
	upx -d "$srcdir/C64-65XE-NES-Debugger/c64debugger"
	patchelf --replace-needed libxcb-util.so.0 libxcb-util.so.1 "$srcdir/C64-65XE-NES-Debugger/c64debugger"
}
package() {
	install -Dm755 "$srcdir/C64-65XE-NES-Debugger/c64debugger" "$pkgdir/usr/bin/c64-debugger"
}
