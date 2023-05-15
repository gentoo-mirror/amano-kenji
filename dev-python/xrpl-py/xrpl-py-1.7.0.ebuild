EAPI=8

PYTHON_COMPAT=( python3_{7..11} )
DISTUTILS_USE_PEP517=poetry
inherit distutils-r1

DESCRIPTION="A pure Python implementation for interacting with the XRP Ledger"
HOMEPAGE="https://github.com/XRPLF/xrpl-py"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"
LICENSE="ISC"
KEYWORDS="~amd64"
RESTRICT="primaryuri"
SLOT="0"
RDEPEND=">=dev-python/base58-2.1.0[${PYTHON_USEDEP}]
	>=dev-python/ECPy-1.2.5[${PYTHON_USEDEP}]
	>=dev-python/typing-extensions-4.2.0[${PYTHON_USEDEP}]
	>=dev-python/httpx-0.18.1[${PYTHON_USEDEP}]
	>=dev-python/websockets-10[${PYTHON_USEDEP}]
	>=dev-python/deprecated-1.2.13[${PYTHON_USEDEP}]
	>=dev-python/types-Deprecated-1.2.9[${PYTHON_USEDEP}]"
