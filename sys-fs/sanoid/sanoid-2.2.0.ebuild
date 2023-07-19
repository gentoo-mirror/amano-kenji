EAPI=8

DESCRIPTION="Policy-driven snapshot management and replication tools."
HOMEPAGE="https://github.com/jimsalterjrs/sanoid"
SRC_URI="https://github.com/jimsalterjrs/${PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz"
KEYWORDS="~amd64"

LICENSE="GPL-3"
SLOT="0"
IUSE="+cronjob"
DOCS="CHANGELIST README.md sanoid.conf"

RDEPEND=">=dev-lang/perl-5.30
	dev-perl/Config-IniFiles
	dev-perl/Capture-Tiny
	sys-apps/pv
	virtual/ssh
	app-arch/lzop
	app-arch/zstd
	app-arch/gzip
	app-arch/lz4
	sys-block/mbuffer"

src_install() {
	einstalldocs
	dobin sanoid syncoid findoid sleepymutex
	insinto /etc/sanoid
	doins sanoid.defaults.conf
	if use cronjob; then
		insinto /etc/cron.d
		newins "${FILESDIR}/${PN}.cron" ${PN}
	fi
}

pkg_postinst() {
	elog "Create /etc/sanoid/sanoid.conf"
	elog "An example is provided in /usr/share/doc/${PF}"
	if use cronjob; then
		elog "/etc/cron.d/sanoid executes \`sanoid --cron\` every minute."
	fi
}
