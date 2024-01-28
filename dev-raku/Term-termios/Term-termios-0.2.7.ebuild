EAPI="8"

inherit rakudo

DESCRIPTION="termios routines for Raku"
HOMEPAGE="https://raku.land/zef:krunen/Term::termios"
SRC_URI="mirror://zef/T/ER/TERM_TERMIOS/d2a19f93ea7906a1419608067adabcc5bbeee9d6.tar.gz -> ${P}.tar.gz"
LICENSE="Artistic-2"
SLOT="0"
KEYWORDS="~amd64"
RESTRICT="primaryuri"
DOCS="README.md"
BDEPEND="dev-raku/Distribution-Builder-MakeFromJSON"
RDEPEND="dev-raku/Distribution-Builder-MakeFromJSON"
S="${WORKDIR}/dist"
