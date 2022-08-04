# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit go-module

DESCRIPTION="Sentinel VPN CLI Client"
HOMEPAGE="https://sentinel.co"
SRC_URI="https://github.com/sentinel-official/cli-client/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz
	mirror://amano-kenji/sentinel-cli-client-0.1.9-deps.tar.xz"
LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
DEPEND=""
RDEPEND="net-dns/openresolv
	net-vpn/wireguard-tools"
S="${WORKDIR}/cli-client-${PV}"
DOCS="README.md"
RESTRICT="primaryuri"

src_compile() {
	go build || die
}

src_install() {
	einstalldocs
	newbin cli-client sentinelcli
}
