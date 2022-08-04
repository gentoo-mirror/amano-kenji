# Copyright 2020-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit autotools pam

DESCRIPTION="Unlock GnuPG keys on login"
HOMEPAGE="https://github.com/cruegge/pam-gnupg"
COMMIT="99f1c2a3f903276c03a13692f50c292aa4b7bd37"
SRC_URI="https://github.com/cruegge/pam-gnupg/archive/${COMMIT}.tar.gz -> ${P}.tar.gz"
KEYWORDS="~amd64 ~x86"

LICENSE="GPL-3"
SLOT="0"
IUSE=""

DEPEND="
	app-crypt/gnupg
	sys-libs/pam
"
RDEPEND="${DEPEND}"
S="${WORKDIR}/${PN}-${COMMIT}"

src_prepare() {
	eapply_user
	eautoreconf
}

src_configure() {
	econf --prefix=/usr --with-moduledir=$(getpam_mod_dir)
}

pkg_postinst() {
	elog
	elog "To enable pam-gnupg, you must put the lines:"
	elog "'auth    optional pam_gnupg.so' and"
	elog "'session optional pam_gnupg.so' into one of these files."
	elog
	elog "/etc/pam.d/lightdm, /etc/pam.d/lxdm, /etc/pam.d/sddm, etc."
	elog
	elog "For tty login use the file: /etc/pam.d/system-local-login"
	elog
	elog "See <https://github.com/cruegge/pam-gnupg#usage>"
	elog "for more detailed usage instructions."
	elog
}
