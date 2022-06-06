# Copyright 2020-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7
PYTHON_COMPAT=( python3_{6..9} )

inherit distutils-r1

DESCRIPTION="Tree widgets for urwid"
HOMEPAGE="https://github.com/pazz/urwidtrees"
SRC_URI="https://github.com/pazz/urwidtrees/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64"
IUSE="doc"

DEPEND="doc? ( dev-python/sphinx[${PYTHON_USEDEP}] )"
RDEPEND=">=dev-python/urwid-1.1.0[${PYTHON_USEDEP}]
	dev-python/mock[${PYTHON_USEDEP}]"

src_compile() {
	distutils-r1_src_compile

	use doc && emake -C docs html
}

src_install() {
	distutils-r1_src_install

	if use doc; then
		dodoc -r docs/build/html
	fi
}
