# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="Policy-driven snapshot management and replication tools."
HOMEPAGE="https://github.com/jimsalterjrs/sanoid"
SRC_URI="https://github.com/jimsalterjrs/${PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz"
KEYWORDS="~amd64"

LICENSE="GPL-3"
SLOT="0"
IUSE=""
DOCS="CHANGELIST LICENSE VERSION README.md sanoid.conf"

RDEPEND=">=dev-lang/perl-5.30
	dev-perl/Config-IniFiles
	dev-perl/Capture-Tiny
	sys-apps/pv
	virtual/ssh
	app-arch/lzop
	sys-block/mbuffer
	app-arch/gzip"

src_install() {
	einstalldocs
	dobin sanoid syncoid findoid sleepymutex
	insinto /etc/sanoid
	doins sanoid.defaults.conf
	insinto /etc/cron.d
	newins "${FILESDIR}/${PN}.cron" ${PN}
}

pkg_postinst() {
	elog "Create /etc/sanoid/sanoid.conf"
	elog "An example is provided in /usr/share/doc/${PF}"
	elog "/etc/cron.d/sanoid executes \`sanoid --cron\` every minute."
}
