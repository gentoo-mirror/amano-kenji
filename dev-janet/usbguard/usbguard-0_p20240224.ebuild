EAPI=8

inherit janet-module

DESCRIPTION="A janet module for usbguard"
HOMEPAGE="https://codeberg.org/amano.kenji/janet-usbguard"
COMMIT="2b1312294a7373052f788cf9bf0c4a86a07e9870"
SRC_URI="https://codeberg.org/amano.kenji/janet-usbguard/archive/${COMMIT}.tar.gz -> janet-${P}.tar.gz"
LICENSE="0BSD"
SLOT="0"
KEYWORDS="~amd64"
RESTRICT="primaryuri"
RDEPEND="dev-janet/spork"
DOCS="README.md"
S="${WORKDIR}/janet-${PN}"
