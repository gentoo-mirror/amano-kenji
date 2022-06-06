# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3_{6..9} )
inherit distutils-r1

DESCRIPTION="Python implementation of routeros api"
HOMEPAGE="https://github.com/luqasz/librouteros"
SRC_URI="mirror://pypi/${P:0:1}/${PN}/${P}.tar.gz"
REQUIRED_USE="${PYTHON_REQUIRED_USE}"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~arm64"
