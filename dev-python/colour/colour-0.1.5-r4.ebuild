# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3_{7..11} )
inherit distutils-r1

DESCRIPTION="Python color representations manipulation library (RGB, HSL, web, ...)"
HOMEPAGE="https://github.com/vaab/colour"
SRC_URI="mirror://pypi/${P:0:1}/${PN}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
REQUIRED_USE="${PYTHON_REQUIRED_USE}"

DEPEND="dev-python/d2to1[${PYTHON_USEDEP}]"
