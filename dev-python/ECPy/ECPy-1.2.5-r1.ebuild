EAPI=8

PYTHON_COMPAT=( python3_{6..13} )
DISTUTILS_USE_PEP517=setuptools
inherit distutils-r1

DESCRIPTION="a pure python Elliptic Curve library"
HOMEPAGE="https://github.com/cslashm/ECPy"
SRC_URI="https://github.com/cslashm/ECPy/archive/refs/tags/${PV}.tar.gz -> ${P}.tar.gz"
LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64"
RESTRICT="primaryuri"
