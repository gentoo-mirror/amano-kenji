EAPI=8

PYTHON_COMPAT=( python3_{8..13} )
DISTUTILS_USE_PEP517=poetry
inherit distutils-r1

DESCRIPTION="Enable git-like did-you-mean feature in click."
HOMEPAGE="https://github.com/click-contrib/click-didyoumean"
SRC_URI="https://github.com/click-contrib/${PN}/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"

DEPEND="
	>=dev-python/click-7[${PYTHON_USEDEP}]"
RDEPEND="${DEPEND}"
