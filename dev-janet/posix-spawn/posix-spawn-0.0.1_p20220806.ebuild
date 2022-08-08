EAPI=8

inherit janet-module

DESCRIPTION="A process API for janet wrapping posix-spawn(3)."
HOMEPAGE="https://github.com/andrewchambers/janet-posix-spawn"
COMMIT="d73057161a8d10f27b20e69f0c1e2ceb3e145f97"
SRC_URI="https://github.com/andrewchambers/janet-posix-spawn/archive/${COMMIT}.tar.gz -> janet-${P}.tar.gz"
LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
RESTRICT="primaryuri"
S="${WORKDIR}/janet-${PN}-${COMMIT}"
DOCS=(README.md API.md)
