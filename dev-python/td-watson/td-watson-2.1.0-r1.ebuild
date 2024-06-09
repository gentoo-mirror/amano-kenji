EAPI=8

PYTHON_COMPAT=( python3_{6..13} )
DISTUTILS_USE_PEP517=setuptools
inherit distutils-r1

DESCRIPTION="A wonderful CLI to track your time!"
HOMEPAGE="https://github.com/TailorDev/Watson"
SRC_URI="https://github.com/TailorDev/Watson/archive/refs/tags/${PV}.tar.gz -> ${P}.tar.gz"

S="${WORKDIR}/Watson-${PV}"
LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"

DEPEND="
	>=dev-python/arrow-1.0.0[${PYTHON_USEDEP}]
	>=dev-python/click-8.0[${PYTHON_USEDEP}]
	dev-python/click-didyoumean[${PYTHON_USEDEP}]
	dev-python/requests[${PYTHON_USEDEP}]"
RDEPEND="${DEPEND}"
