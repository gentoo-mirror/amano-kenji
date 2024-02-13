EAPI=8

inherit janet-module

DESCRIPTION="A janet scripting system for i3bar and swaybar"
HOMEPAGE="https://codeberg.org/amano.kenji/j3blocks-extra"
COMMIT="a23022833bf4cbc96e5d2a198af0964d1152c6e8"
SRC_URI="https://codeberg.org/amano.kenji/j3blocks-extra/archive/${COMMIT}.tar.gz -> janet-${P}.tar.gz"
LICENSE="0BSD"
SLOT="0"
KEYWORDS="~amd64"
RESTRICT="primaryuri"
RDEPEND="dev-janet/j3blocks
	dev-janet/spork"
DOCS="README.md"
S="${WORKDIR}/${PN}"
