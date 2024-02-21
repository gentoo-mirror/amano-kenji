EAPI=8

inherit janet-module

DESCRIPTION="A janet module for usbguard"
HOMEPAGE="https://codeberg.org/amano.kenji/janet-usbguard"
COMMIT="efbf77d41b5e040fec520e6fb0f8967ef5d0fad4"
SRC_URI="https://codeberg.org/amano.kenji/janet-usbguard/archive/${COMMIT}.tar.gz -> janet-${P}.tar.gz"
LICENSE="0BSD"
SLOT="0"
KEYWORDS="~amd64"
RESTRICT="primaryuri"
RDEPEND="dev-janet/spork"
DOCS="README.md"
S="${WORKDIR}/janet-${PN}"
