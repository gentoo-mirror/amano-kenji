# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit janet-executable

DESCRIPTION="A Dynamic DNS Client written in janet"
HOMEPAGE="https://gitlab.com/croquet/jddclient"
SRC_URI="https://gitlab.com/croquet/jddclient/-/archive/v${PV}/${PN}-v${PV}.tar.bz2 -> ${P}.tar.bz2"

LICENSE="public-domain"
SLOT="0"
KEYWORDS="~amd64"

BDEPEND="dev-janet/argparse
	dev-janet/sh
	dev-janet/http"

DOCS="README.adoc"
RESTRICT="primaryuri"
S="${WORKDIR}/${PN}-v${PV}"

src_install() {
	janet-executable_src_install
	exeinto /etc/init.d
	newexe "${FILESDIR}/jddclient-openrc" jddclient
}
