# Copyright 2020-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI="7"

PYTHON_COMPAT=( python3_{5..9} )

inherit distutils-r1

DESCRIPTION="Enhance standard unittest package with features for testing asyncio libraries"
HOMEPAGE="https://github.com/Martiusweb/asynctest/ https://pypi.org/project/asynctest/"
SRC_URI="mirror://pypi/${P:0:1}/${PN}/${P}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

RDEPEND=""
DEPEND=""

python_test() {
	PYTHONPATH=. python -m unittest test
}
