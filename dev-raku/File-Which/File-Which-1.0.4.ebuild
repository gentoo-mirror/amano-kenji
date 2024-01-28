EAPI="8"

inherit rakudo

DESCRIPTION="Find the full or relative paths to an executable program"
HOMEPAGE="https://raku.land/github:azawawi/File::Which"
SRC_URI="https://github.com/azawawi/raku-file-which/archive/refs/tags/${PV}.tar.gz -> ${P}.tar.gz"
LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
RESTRICT="primaryuri"
DOCS="README.md examples"
S="${WORKDIR}/raku-file-which-${PV}"
