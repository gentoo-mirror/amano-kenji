EAPI=8

PYTHON_COMPAT=( python3_{7..11} )
DISTUTILS_USE_PEP517=setuptools
inherit distutils-r1

DESCRIPTION="Base58 and Base58Check implementation"
HOMEPAGE="https://github.com/keis/base58"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"
LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
RESTRICT="primaryuri"
