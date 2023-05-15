EAPI=8

PYTHON_COMPAT=( python3_{6..11} )
DISTUTILS_USE_PEP517=setuptools
inherit distutils-r1

DESCRIPTION="a pure python Elliptic Curve library"
HOMEPAGE="https://github.com/cslashm/ECPy"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"
LICENSE="Apache-2.0"
KEYWORDS="~amd64"
RESTRICT="primaryuri"
SLOT="0"
