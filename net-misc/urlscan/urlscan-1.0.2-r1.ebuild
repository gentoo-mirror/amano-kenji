EAPI=8

PYTHON_COMPAT=( python3_{6..13} )
DISTUTILS_USE_PEP517=hatchling
inherit distutils-r1

DESCRIPTION="Launch URLs contained in a text content on a web browser"
HOMEPAGE="https://github.com/firecat53/urlscan"
SRC_URI="https://github.com/firecat53/${PN}/archive/refs/tags/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64"
RESTRICT="primaryuri"
DEPEND=">=dev-python/urwid-1.2.1"
RDEPEND="${DEPEND}"

python_prepare_all() {
   export SETUPTOOLS_SCM_PRETEND_VERSION=${PV}
   distutils-r1_python_prepare_all
}
