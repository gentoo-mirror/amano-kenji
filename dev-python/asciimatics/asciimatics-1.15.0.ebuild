EAPI=8

PYTHON_COMPAT=( python3_{9..13} )
DISTUTILS_USE_PEP517=setuptools
inherit distutils-r1

DESCRIPTION="Package for curses-like operations, text UIs and ASCII art animations"
HOMEPAGE="https://pypi.org/project/asciimatics/ https://github.com/peterbrittain/asciimatics"
SRC_URI="https://github.com/peterbrittain/asciimatics/archive/refs/tags/${PV}.tar.gz -> ${P}.tar.gz"
LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64"
RESTRICT="primaryuri"
RDEPEND="
	>=dev-python/pyfiglet-0.7.2[${PYTHON_USEDEP}]
	>=dev-python/pillow-2.7.0[${PYTHON_USEDEP}]
	dev-python/wcwidth[${PYTHON_USEDEP}]
"
