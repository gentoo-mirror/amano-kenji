EAPI=8

inherit janet-module

DESCRIPTION="Various Janet utility modules - the official \"Contrib\" library."
HOMEPAGE="https://github.com/janet-lang/spork"
COMMIT="fd725696ee221447d8a4544b70fb9d13f9b2f4ab"
SRC_URI="https://github.com/janet-lang/${PN}/archive/${COMMIT}.tar.gz -> janet-${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"

S="${WORKDIR}/${PN}-${COMMIT}"
DOCS="README.md doc/*"
RESTRICT="primaryuri"
