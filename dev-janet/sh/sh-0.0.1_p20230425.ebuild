EAPI=8

inherit janet-module

DESCRIPTION="A janet module for shell functions."
HOMEPAGE="https://github.com/andrewchambers/janet-sh"
COMMIT="221bcc869bf998186d3c56a388c8313060bfd730"
SRC_URI="https://github.com/andrewchambers/janet-sh/archive/${COMMIT}.tar.gz -> janet-${P}.tar.gz"
LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
RESTRICT="primaryuri"
RDEPEND="dev-janet/posix-spawn"
S="${WORKDIR}/janet-${PN}-${COMMIT}"
DOCS="README.md"
