# Copyright 2020-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit pam

DESCRIPTION="Creates an XDG_RUNTIME_DIR on login and never removes it."
HOMEPAGE="https://github.com/ifreund/dumb_runtime_dir"
SRC_URI="https://github.com/ifreund/${PN}/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz"
LICENSE="0BSD"
SLOT="0"
KEYWORDS="~amd64"
RESTRICT="primaryuri"
DEPEND="sys-libs/pam"
RDEPEND="${DEPEND}"
DOCS="README.md"

src_install() {
	einstalldocs
	dopammod pam_dumb_runtime_dir.so
}

pkg_postinst() {
	elog "To use this PAM module, add"
	elog "session optional pam_dumb_runtime_dir.so"
	elog "to /etc/pam.d/system-login"
}
