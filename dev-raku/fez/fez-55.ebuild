EAPI="8"

inherit rakudo

DESCRIPTION="Command line tool for uploading distributions to zef ecosystem"
HOMEPAGE="https://github.com/tony-o/raku-fez"
SRC_URI="mirror://zef/F/EZ/FEZ/545919bd9786e02834ecf24e3d93febfba196bf3.tar.gz -> ${P}.tar.gz"
LICENSE="Artistic-2"
SLOT="0"
KEYWORDS="~amd64"
RESTRICT="primaryuri"
DOCS="README.md docs/Fez/*.md"
S="${WORKDIR}/dist"

src_install() {
	rakudo_src_install
	rakudo_symlink_bin fez
}
