EAPI="8"

inherit rakudo

DESCRIPTION="A Raku module for encoding / decoding URIs"
HOMEPAGE="https://raku.land/zef:raku-community-modules/URI::Encode"
SRC_URI="mirror://zef/U/RI/URI_ENCODE/44046038356c5e83ec603dff2486d91870355c28.tar.gz -> ${P}.tar.gz"
LICENSE="FreeBSD"
SLOT="0"
KEYWORDS="~amd64"
RESTRICT="primaryuri"
DOCS="README.md"
S="${WORKDIR}/dist"
