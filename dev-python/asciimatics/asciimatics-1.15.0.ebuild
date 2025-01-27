EAPI=8

PYTHON_COMPAT=( python3_{9..13} )
DISTUTILS_USE_PEP517=setuptools
inherit distutils-r1

DESCRIPTION="Package for curses-like operations, text UIs and ASCII art animations"
HOMEPAGE="https://pypi.org/project/asciimatics/ https://github.com/peterbrittain/asciimatics"
SRC_URI="https://files.pythonhosted.org/packages/dd/2e/146aca5e940c3b0df5c93c99e6eefe9c52e1e70a0e91fc98d2b466de61a4/asciimatics-1.15.0.tar.gz"
LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64"
RESTRICT="primaryuri"
RDEPEND="
	>=dev-python/pyfiglet-0.7.2[${PYTHON_USEDEP}]
	>=dev-python/pillow-2.7.0[${PYTHON_USEDEP}]
	dev-python/wcwidth[${PYTHON_USEDEP}]
"
