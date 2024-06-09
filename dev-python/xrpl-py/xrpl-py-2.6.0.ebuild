EAPI=8

PYTHON_COMPAT=( python3_{7..12} )
DISTUTILS_USE_PEP517=poetry
inherit distutils-r1

DESCRIPTION="A pure Python implementation for interacting with the XRP Ledger"
HOMEPAGE="https://github.com/XRPLF/xrpl-py"
SRC_URI="https://github.com/XRPLF/${PN}/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz"
LICENSE="ISC"
SLOT="0"
KEYWORDS="~amd64"
RESTRICT="primaryuri"
RDEPEND=">=dev-python/base58-2.1.0[${PYTHON_USEDEP}]
	>=dev-python/ECPy-1.2.5[${PYTHON_USEDEP}]
	>=dev-python/typing-extensions-4.2.0[${PYTHON_USEDEP}]
	>=dev-python/httpx-0.18.1[${PYTHON_USEDEP}]
	>=dev-python/websockets-10[${PYTHON_USEDEP}]
	>=dev-python/deprecated-1.2.13[${PYTHON_USEDEP}]
	>=dev-python/types-Deprecated-1.2.9[${PYTHON_USEDEP}]"
