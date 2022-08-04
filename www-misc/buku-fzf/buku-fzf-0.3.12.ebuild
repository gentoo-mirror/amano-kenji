# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit janet-executable

DESCRIPTION="A buku bookmark browser"
HOMEPAGE="https://codeberg.org/amano.kenji/buku-fzf"
SRC_URI="https://codeberg.org/amano.kenji/${PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="public-domain"
SLOT="0"
KEYWORDS="~amd64"

RESTRICT="primaryuri"
BDEPEND=">=dev-janet/spork-0_p20220720
	>=dev-janet/sh-0_alpha20200513"
RDEPEND=">=sys-apps/util-linux-2.35.2
	>=sys-apps/coreutils-8.32
	>=www-misc/buku-4.7
	>=app-shells/fzf-0.25.1"
DOCS="README.adoc"
S="${WORKDIR}/${PN}"
