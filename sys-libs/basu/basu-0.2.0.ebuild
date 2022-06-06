# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit meson

DESCRIPTION="sd-bus library extracted from systemd"
HOMEPAGE="https://github.com/emersion/basu"
SRC_URI="https://github.com/emersion/basu/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz"
LICENSE="LGPL-2.1"
SLOT="0"
KEYWORDS="~amd64"
IUSE="caps audit"
RESTRICT="primaryuri"
RDEPEND="caps? ( sys-libs/libcap )
	audit? ( sys-process/audit )"
DOCS="README.md"

src_configure() {
	local emesonargs=(
		$(meson_use audit)
	)
	meson_src_configure
}
