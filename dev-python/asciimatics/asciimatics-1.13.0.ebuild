# Copyright 2020-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI="8"

PYTHON_COMPAT=( python3_{5..10} )

inherit distutils-r1

DESCRIPTION="Package for curses-like operations, text UIs and ASCII art animations"
HOMEPAGE="https://pypi.org/project/asciimatics/ https://github.com/peterbrittain/asciimatics"
SRC_URI="mirror://pypi/${P:0:1}/${PN}/${P}.tar.gz"
KEYWORDS="~amd64"
LICENSE="Apache-2.0"
SLOT="0"
RESTRICT="primaryuri"
RDEPEND="
	>=dev-python/pyfiglet-0.7.2[${PYTHON_USEDEP}]
	>=dev-python/pillow-2.7.0[${PYTHON_USEDEP}]
	dev-python/wcwidth[${PYTHON_USEDEP}]
	dev-python/future[${PYTHON_USEDEP}]
"
