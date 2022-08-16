# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit go-module pam

DESCRIPTION="Dead simple CLI Display Manager on TTY"
HOMEPAGE="https://github.com/tvrzna/emptty"
COMMIT="c869c77d4db1694350dcb35a81c4e6bc4d8d6069"
SRC_URI="https://github.com/tvrzna/emptty/archive/${COMMIT}.tar.gz -> ${P}.tar.gz
	mirror://amano-kenji/${PN}-0.8.1-deps.tar.xz"
LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
RESTRICT="primaryuri"
DEPEND="sys-libs/pam
	x11-libs/libX11"
RDEPEND="${DEPEND}"
BDEPEND=">=dev-lang/go-1.14"
S="${WORKDIR}/${PN}-${COMMIT}"
DOCS="README.md SAMPLES.md res/conf"

src_compile() {
	go build || die
}

src_install() {
	dobin emptty
	einstalldocs
	doman res/emptty.1

	newpamd res/pam emptty
	insinto /usr/lib/systemd/system
	newins res/systemd-service emptty.service
	exeinto /etc/init.d
	newexe res/openrc-service emptty
}
