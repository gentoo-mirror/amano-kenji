# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{3..11} )
inherit distutils-r1

DESCRIPTION="app-admin/pass backend for dev-python/keyring"
HOMEPAGE="https://github.com/nazarewk/${PN}"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

SLOT="0"
LICENSE="MIT"
KEYWORDS="~amd64"

RDEPEND="dev-python/keyring"
RESTRICT="primaryuri"
