EAPI=8

inherit janet-executable

DESCRIPTION="It launches an executable in an archive file with dosbox."
HOMEPAGE="https://codeberg.org/amano.kenji/simple-dosbox-launcher"
SRC_URI="https://codeberg.org/amano.kenji/${PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz"
LICENSE="0BSD"
SLOT="0"
KEYWORDS="~amd64"
RESTRICT="primaryuri"
BDEPEND="dev-janet/spork"
RDEPEND=">=sys-fs/fuse-2.9.9-r1
	>=sys-apps/coreutils-8.32
	>=app-arch/atool-0.39.0
	>=sys-fs/unionfs-fuse-2.1
	|| (
	games-emulation/dosbox-staging
	games-emulation/dosbox
	)"
DOCS="README.adoc"
S="${WORKDIR}/${PN}"
