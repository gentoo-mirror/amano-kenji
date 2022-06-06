# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3_{5..9} )
inherit distutils-r1

DESCRIPTION="Open Sound Control server and client in pure python"
HOMEPAGE="https://github.com/attwad/python-osc"
SRC_URI="https://github.com/attwad/python-osc/archive/v${PV}.tar.gz -> ${P}.tar.gz"
REQUIRED_USE="${PYTHON_REQUIRED_USE}"

LICENSE="Unlicense"
SLOT="0"
KEYWORDS="~amd64 ~x86"
