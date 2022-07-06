# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{6..10} )
DISTUTILS_USE_PEP517=pdm
inherit distutils-r1

DESCRIPTION="Command-line tool and Python library to interact with aria2c through JSON-RPC"
HOMEPAGE="https://pawamoy.github.io/aria2p"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="ISC"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
RESTRICT="primaryuri"
RDEPEND=">=dev-python/appdirs-1.4[${PYTHON_USEDEP}]
	>=dev-python/loguru-0.5[${PYTHON_USEDEP}]
	>=dev-python/requests-2.19[${PYTHON_USEDEP}]
	>=dev-python/toml-0.10[${PYTHON_USEDEP}]
	>=dev-python/websocket-client-0.58[${PYTHON_USEDEP}]
	>=dev-python/asciimatics-1.13[${PYTHON_USEDEP}]
	>=dev-python/pyperclip-1.8[${PYTHON_USEDEP}]"
