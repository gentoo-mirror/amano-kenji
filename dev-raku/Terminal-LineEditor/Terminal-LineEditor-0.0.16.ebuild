EAPI="8"

inherit rakudo

DESCRIPTION="Generalized terminal line editing"
HOMEPAGE="https://raku.land/zef:japhb/Terminal::LineEditor"
SRC_URI="mirror://zef/T/ER/TERMINAL_LINEEDITOR/fdc687120c011f0be74f83dc4b5d7c2ee5399c47.tar.gz -> ${P}.tar.gz"
LICENSE="Artistic-2"
SLOT="0"
KEYWORDS="~amd64"
RESTRICT="primaryuri"
DOCS="README.md Changes docs/*.md"
RDEPEND="dev-raku/Terminal-ANSIParser
	dev-raku/Terminal-Capabilities
	dev-raku/Term-termios
	dev-raku/Text-MiscUtils"
