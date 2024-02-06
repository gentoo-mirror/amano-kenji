EAPI=8

inherit janet-module

DESCRIPTION="A janet scripting system for i3bar and swaybar"
HOMEPAGE="https://codeberg.org/amano.kenji/j3blocks-extra"
COMMIT="f0228e95a5957b7bd7086e3364c30b1b3d0f7f0f"
SRC_URI="https://codeberg.org/amano.kenji/j3blocks-extra/archive/${COMMIT}.tar.gz -> janet-${P}.tar.gz"
LICENSE="0BSD"
SLOT="0"
KEYWORDS="~amd64"
RESTRICT="primaryuri"
RDEPEND="dev-janet/j3blocks
	dev-janet/spork"
DOCS="README.md"
S="${WORKDIR}/${PN}"
