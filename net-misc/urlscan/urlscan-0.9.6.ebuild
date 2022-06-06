# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{6..9} )
inherit distutils-r1

DESCRIPTION="Launch URLs contained in a text content on a web browser"
HOMEPAGE="https://github.com/firecat53/urlscan"
SRC_URI="mirror://pypi/${P:0:1}/${PN}/${P}.tar.gz"

RESTRICT="primaryuri"
LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64"
REQUIRED_USE="${PYTHON_REQUIRED_USE}"
DEPEND=">=dev-python/urwid-1.2.1"
RDEPEND="${DEPEND}"
