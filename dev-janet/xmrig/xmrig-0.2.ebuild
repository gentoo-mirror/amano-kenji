# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit janet-module

DESCRIPTION="A janet library for xmrig HTTP API"
HOMEPAGE="https://github.com/crocket/janet-xmrig"
SRC_URI="https://github.com/crocket/janet-xmrig/archive/v${PV}.tar.gz -> janet-${P}.tar.gz"

LICENSE="public-domain"
SLOT="0"
KEYWORDS="~amd64"

DEPEND=""
RDEPEND="${DEPEND}"
S="${WORKDIR}/janet-${P}"
