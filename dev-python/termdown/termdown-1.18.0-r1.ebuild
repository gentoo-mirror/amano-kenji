EAPI=8

PYTHON_COMPAT=( python3_{4..13} )
DISTUTILS_USE_PEP517=setuptools
inherit distutils-r1

DESCRIPTION="Countdown timer and stopwatch in your terminal"
HOMEPAGE="https://github.com/trehn/termdown"
SRC_URI="https://github.com/trehn/${PN}/archive/refs/tags/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64"
IUSE="speak"

RDEPEND="
	>=dev-python/click-2.0[${PYTHON_USEDEP}]
	>=dev-python/python-dateutil-2.4.2[${PYTHON_USEDEP}]
	>=dev-python/pyfiglet-0.7[${PYTHON_USEDEP}]
	speak? ( app-accessibility/espeak-ng )"
