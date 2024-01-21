EAPI=8

inherit janet-module

DESCRIPTION="A janet scripting system for i3bar and swaybar"
HOMEPAGE="https://codeberg.org/amano.kenji/j3blocks"
COMMIT="e41b6189287878e2d1fcd62438597ad74540b6ff"
SRC_URI="https://codeberg.org/amano.kenji/j3blocks/archive/${COMMIT}.tar.gz -> janet-${P}.tar.gz"
LICENSE="0BSD"
SLOT="0"
KEYWORDS="~amd64"
RESTRICT="primaryuri"
RDEPEND="dev-janet/spork"
DOCS="README.md examples"
S="${WORKDIR}/${PN}"
