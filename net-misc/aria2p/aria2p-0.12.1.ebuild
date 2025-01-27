EAPI=8

PYTHON_COMPAT=( python3_{9..13} )
DISTUTILS_USE_PEP517=pdm-backend
inherit distutils-r1

DESCRIPTION="Command-line tool and library to interact with an aria2c daemon process"
HOMEPAGE="https://github.com/pawamoy/aria2p"
SRC_URI="https://github.com/pawamoy/${PN}/archive/refs/tags/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="ISC"
SLOT="0"
KEYWORDS="~amd64"
RESTRICT="primaryuri"
DEPEND=">=dev-python/loguru-0.5[${PYTHON_USEDEP}]
	>=dev-python/platformdirs-4.2[${PYTHON_USEDEP}]
	>=dev-python/requests-2.19[${PYTHON_USEDEP}]
	>=dev-python/websocket-client-0.58[${PYTHON_USEDEP}]
	>=dev-python/asciimatics-1.13[${PYTHON_USEDEP}]
	>=dev-python/pyperclip-1.8[${PYTHON_USEDEP}]"
RDEPEND="${DEPEND}"
