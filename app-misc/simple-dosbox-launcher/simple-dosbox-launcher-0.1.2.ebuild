# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit janet-executable

DESCRIPTION="It launches an executable in an archive file with dosbox."
HOMEPAGE="https://github.com/crocket/simple-dosbox-launcher"
SRC_URI="https://github.com/crocket/${PN}/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz"
LICENSE="public-domain"
SLOT="0"
KEYWORDS="~amd64"
RESTRICT="primaryuri"
BDEPEND=">=dev-janet/argparse-0_pre20201201:=
	>=dev-janet/sh-0_alpha20200513:="
RDEPEND=">=sys-fs/fuse-2.9.9-r1
	>=sys-apps/coreutils-8.32
	>=app-arch/atool-0.39.0
	>=sys-fs/unionfs-fuse-2.1
	|| (
	games-emulation/dosbox-staging
	games-emulation/dosbox
	)"
DOCS="README.adoc"
