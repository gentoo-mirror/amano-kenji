EAPI=8

inherit janet-module

DESCRIPTION="A janet module for shell functions."
HOMEPAGE="https://github.com/andrewchambers/janet-sh"
COMMIT="ec620d5d7310b3682dd0f7bfa86eae6b244d1510"
SRC_URI="https://github.com/andrewchambers/janet-sh/archive/${COMMIT}.tar.gz -> janet-${P}.tar.gz"
LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
RESTRICT="primaryuri"
RDEPEND="dev-janet/posix-spawn"
S="${WORKDIR}/janet-${PN}-${COMMIT}"
DOCS="README.md"
