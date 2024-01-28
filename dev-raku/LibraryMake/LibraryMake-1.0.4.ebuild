EAPI="8"

inherit rakudo

DESCRIPTION="An attempt to simplify building native code for a Raku module."
HOMEPAGE="https://raku.land/zef:jjmerelo/LibraryMake"
SRC_URI="mirror://zef/L/IB/LIBRARYMAKE/143f344526f3bf6164ca9bd9118adeba086162a0.tar.gz -> ${P}.tar.gz"
LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
RESTRICT="primaryuri"
DOCS="README.md"
RDEPEND="dev-raku/File-Which
	dev-raku/Shell-Command"
S="${WORKDIR}/dist"
