EAPI=8

inherit janet-module

DESCRIPTION="Various Janet utility modules - the official \"Contrib\" library."
HOMEPAGE="https://github.com/janet-lang/spork"
COMMIT="5848f210609792bdb8acfc3e2f1dc74fdc9d2357"
SRC_URI="https://github.com/janet-lang/${PN}/archive/${COMMIT}.tar.gz -> janet-${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"

S="${WORKDIR}/${PN}-${COMMIT}"
DOCS="README.md doc/*"
RESTRICT="primaryuri"
