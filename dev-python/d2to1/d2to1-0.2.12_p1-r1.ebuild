# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3_{4..9} )
inherit distutils-r1

DESCRIPTION="It converts distutils2's setup.cfg to setuptools' setup.py"
HOMEPAGE="https://github.com/embray/d2to1"
SRC_URI="mirror://pypi/${P:0:1}/${PN}/${PN}-0.2.12.post1.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
REQUIRED_USE="${PYTHON_REQUIRED_USE}"

S="${WORKDIR}/${PN}-0.2.12.post1"
