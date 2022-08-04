# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{8..11} )
DISTUTILS_USE_PEP517=setuptools
inherit distutils-r1

DESCRIPTION="Python implementation of pass"
HOMEPAGE="https://github.com/aviau/python-pass"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"
LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64"
RESTRICT="primaryuri"
BDEPEND="dev-python/sphinx_rtd_theme[${PYTHON_USEDEP}]
	dev-python/pbr[${PYTHON_USEDEP}]"
RDEPEND="dev-python/click[${PYTHON_USEDEP}]
	dev-python/colorama[${PYTHON_USEDEP}]
	dev-python/pexpect[${PYTHON_USEDEP}]
	app-crypt/gnupg
	app-text/tree"
DOCS=( README.rst )
HTML_DOCS=(docs/build/html/.)

src_compile() {
	distutils-r1_src_compile
	sphinx-build -b html docs/source docs/build/html || die
	sphinx-build -b man docs/source docs/build/man || die
}

src_install() {
	distutils-r1_src_install
	doman docs/build/man/pypass.1
}
