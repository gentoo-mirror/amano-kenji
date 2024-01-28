EAPI="8"

inherit rakudo

DESCRIPTION="A bag of small text processing tricks"
HOMEPAGE="https://raku.land/zef:japhb/Text::MiscUtils"
SRC_URI="mirror://zef/T/EX/TEXT_MISCUTILS/fc08b3e800ead3866b62f4275a411e85fc19980f.tar.gz -> ${P}.tar.gz"
LICENSE="Artistic-2"
SLOT="0"
KEYWORDS="~amd64"
RESTRICT="primaryuri"
DOCS="README.md Changes"
RDEPEND="dev-raku/Terminal-ANSIColor"
