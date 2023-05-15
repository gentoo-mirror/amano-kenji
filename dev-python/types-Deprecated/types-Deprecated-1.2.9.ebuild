EAPI=8

PYTHON_COMPAT=( python3_{6..11} )
DISTUTILS_USE_PEP517=setuptools
inherit distutils-r1

DESCRIPTION="a PEP 561 type stub for the Deprecated package"
HOMEPAGE="https://github.com/python/typeshed"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"
LICENSE="Apache-2.0"
KEYWORDS="~amd64"
RESTRICT="primaryuri"
SLOT="0"
