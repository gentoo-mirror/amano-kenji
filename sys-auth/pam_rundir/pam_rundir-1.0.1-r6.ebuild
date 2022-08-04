# Copyright 2020-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit pam

DESCRIPTION="A PAM module that provides XDG_RUNTIME_DIR"
HOMEPAGE=("https://jjacky.com/pam_rundir/"
	"https://github.com/jjk-jacky/pam_rundir"
	"https://github.com/FredrikAleksander/pam_rundir")
SRC_URI="https://github.com/FredrikAleksander/${PN}/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz"
KEYWORDS="~amd64"

LICENSE="GPL-2+"
SLOT="0"
IUSE=""

RESTRICT="primaryuri"
BDEPEND="dev-lang/perl"
CDEPEND="sys-libs/pam"
DEPEND="${CDEPEND}"
RDEPEND="${CDEPEND}"
DOCS=( "AUTHORS" "HISTORY" "README.md" )

src_configure() {
	./configure --with-parentdir=/run/user
}

src_install() {
	einstalldocs
	doman "${PN}.8"
	dopammod "${PN}.so"
}

pkg_postinst() {
	einfo "To use pam_rundir, add"
	einfo "session optional pam_rundir.so"
	einfo "to /etc/pam.d/system-login"
}
