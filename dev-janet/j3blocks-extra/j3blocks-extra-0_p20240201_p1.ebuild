EAPI=8

inherit janet-module

DESCRIPTION="A janet scripting system for i3bar and swaybar"
HOMEPAGE="https://codeberg.org/amano.kenji/j3blocks-extra"
COMMIT="799f7d400a148136084dfd4c8ba464ff5ba47bf4"
SRC_URI="https://codeberg.org/amano.kenji/j3blocks-extra/archive/${COMMIT}.tar.gz -> janet-${P}.tar.gz"
LICENSE="0BSD"
SLOT="0"
KEYWORDS="~amd64"
RESTRICT="primaryuri"
RDEPEND="dev-janet/j3blocks
	dev-janet/spork"
DOCS="README.md"
S="${WORKDIR}/${PN}"
