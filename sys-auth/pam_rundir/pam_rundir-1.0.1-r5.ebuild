# Copyright 2020-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit pam

DESCRIPTION="A PAM module that provides XDG_RUNTIME_DIR"
HOMEPAGE="https://jjacky.com/pam_rundir/"
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
	elog
	elog "To enable pam_rundir, you should put the line:"
	elog "'-session optional pam_rundir.so' into"
	elog "/etc/pam.d/system-local-login"
	elog
	elog "For details, refer to 'man pam_rundir'"
	elog
}
