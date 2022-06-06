# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3_{4..9} )
inherit distutils-r1

DESCRIPTION="Countdown timer and stopwatch in your terminal"
HOMEPAGE="https://github.com/trehn/termdown"
SRC_URI="mirror://pypi/${P:0:1}/${PN}/${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64"
IUSE="speak"
REQUIRED_USE="${PYTHON_REQUIRED_USE}"

RDEPEND="
	>=dev-python/click-2.0[${PYTHON_USEDEP}]
	>=dev-python/python-dateutil-2.4.2[${PYTHON_USEDEP}]
	>=dev-python/pyfiglet-0.7[${PYTHON_USEDEP}]
	speak? ( >=app-accessibility/espeak-1.48 )"
