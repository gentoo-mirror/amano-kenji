# Copyright 2020-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3_{5..9} )

inherit distutils-r1

DESCRIPTION="TUI and CLI for the BitTorrent client Transmission"
HOMEPAGE="https://github.com/rndusr/stig"
SRC_URI="https://github.com/rndusr/stig/archive/v${PV}a0.tar.gz -> ${P}.tar.gz"
LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64"
IUSE="test"
RESTRICT="primaryuri"

RDEPEND="
	>=dev-python/urwid-2.0[${PYTHON_USEDEP}]
	>=dev-python/urwidtrees-1.0.3[${PYTHON_USEDEP}]
	>=dev-python/aiohttp-3[${PYTHON_USEDEP}]
	<dev-python/aiohttp-4[${PYTHON_USEDEP}]
	dev-python/aiohttp-socks[${PYTHON_USEDEP}]
	dev-python/async_timeout[${PYTHON_USEDEP}]
	dev-python/pyxdg[${PYTHON_USEDEP}]
	dev-python/blinker[${PYTHON_USEDEP}]
	dev-python/natsort[${PYTHON_USEDEP}]
	dev-python/setproctitle[${PYTHON_USEDEP}]
"
DEPEND="
	test? ( dev-python/asynctest[${PYTHON_USEDEP}] )
"
S="${WORKDIR}/${P}a0"
