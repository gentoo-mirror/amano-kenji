# Copyright 2019-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="A pure bash session or application launcher. Inspired by cdm, tdm and krunner"
HOMEPAGE="https://loh-tar.github.io/tbsm/"
SRC_URI="https://github.com/loh-tar/${PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz"
KEYWORDS="~amd64"

LICENSE="GPL-2"
SLOT="0"
IUSE=""

DEPEND=""
RDEPEND="app-shells/bash:0"
DOCS="doc/*"

src_install() {
	dobin src/tbsm
	insinto /etc/xdg/tbsm
	doins src/tbsm.conf
	insinto /etc/xdg/tbsm/themes
	doins themes/*
	insinto /usr/share/doc/tbsm
	doins doc/*
}
