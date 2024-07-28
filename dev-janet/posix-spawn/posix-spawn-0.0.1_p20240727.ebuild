EAPI=8

inherit janet-module

DESCRIPTION="A process API for janet wrapping posix-spawn(3)."
HOMEPAGE="https://github.com/andrewchambers/janet-posix-spawn"
COMMIT="3e68f493a6c3b8ed5c333750e33a11ea1a3d00f7"
SRC_URI="https://github.com/andrewchambers/janet-posix-spawn/archive/${COMMIT}.tar.gz -> janet-${P}.tar.gz"
LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
RESTRICT="primaryuri"
S="${WORKDIR}/janet-${PN}-${COMMIT}"
DOCS=(README.md API.md)
