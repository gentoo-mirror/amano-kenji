EAPI="8"

inherit rakudo

DESCRIPTION="Cross-platform routines emulating common *NIX shell commands"
HOMEPAGE="https://raku.land/zef:raku-community-modules/Shell::Command"
SRC_URI="mirror://zef/S/HE/SHELL_COMMAND/a757802b1e828eadb469c53c18451fdb3dc1a54e.tar.gz -> ${P}.tar.gz"
LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
RESTRICT="primaryuri"
DOCS="README.md Changes"
RDEPEND="dev-raku/File-Find
	dev-raku/File-Which"
