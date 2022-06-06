# Copyright 1999-2018 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit git-r3 autotools

DESCRIPTION="A desktop environment-independent bridge between colord and X"
HOMEPAGE="https://github.com/agalakhov/xiccd"
EGIT_REPO_URI="https://github.com/agalakhov/xiccd.git"

LICENSE="GPL-3+"
SLOT="0"
KEYWORDS=""

RDEPEND=">=dev-libs/glib-2.36:2
	>=x11-apps/xrandr-1.3
	>=x11-misc/colord-1.0.2"
DEPEND="${RDEPEND}"

src_prepare() {
	default
	eautoreconf
}
