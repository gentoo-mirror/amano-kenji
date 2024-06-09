EAPI="8"

PYTHON_COMPAT=( python3_{5..13} )
DISTUTILS_USE_PEP517=setuptools
inherit distutils-r1

DESCRIPTION="Enhance standard unittest package with features for testing asyncio libraries"
HOMEPAGE="https://github.com/Martiusweb/asynctest/ https://pypi.org/project/asynctest/"
SRC_URI="https://github.com/Martiusweb/asynctest/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64"

python_test() {
	PYTHONPATH=. python -m unittest test
}
