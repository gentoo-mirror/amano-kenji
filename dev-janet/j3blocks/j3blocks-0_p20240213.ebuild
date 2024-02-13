EAPI=8

inherit janet-module

DESCRIPTION="A janet scripting system for i3bar and swaybar"
HOMEPAGE="https://codeberg.org/amano.kenji/j3blocks"
COMMIT="3bd2a185d67d454f4c677890bfd51d61834c025f"
SRC_URI="https://codeberg.org/amano.kenji/j3blocks/archive/${COMMIT}.tar.gz -> janet-${P}.tar.gz"
LICENSE="0BSD"
SLOT="0"
KEYWORDS="~amd64"
RESTRICT="primaryuri"
RDEPEND="dev-janet/spork"
DOCS="README.md"
S="${WORKDIR}/${PN}"
