EAPI=8

inherit meson

DESCRIPTION="an LV2 port of the Airwindows plugins originally created by Chris Johnson."
HOMEPAGE="https://sr.ht/~hannes/airwindows-lv2/
	https://github.com/hannesbraun/airwindows-lv2"
SRC_URI="https://git.sr.ht/~hannes/airwindows-lv2/archive/v${PV}.tar.gz -> ${P}.tar.gz"
LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
DOCS=( NOTES.md README.md )
RESTRICT="primaryuri"
S="${WORKDIR}/${PN}-v${PV}"
