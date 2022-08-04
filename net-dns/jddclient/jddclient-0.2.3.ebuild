# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit janet-executable

DESCRIPTION="A Dynamic DNS Client written in janet"
HOMEPAGE="https://codeberg.org/amano.kenji/jddclient"
SRC_URI="https://codeberg.org/amano.kenji/${PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz"
LICENSE="public-domain"
SLOT="0"
KEYWORDS="~amd64"
BDEPEND="dev-janet/spork
	dev-janet/sh
	dev-janet/http"
DOCS="README.adoc"
RESTRICT="primaryuri"
S="${WORKDIR}/${PN}"

src_install() {
	janet-executable_src_install
	exeinto /etc/init.d
	newexe "${FILESDIR}/jddclient-openrc" jddclient
}
