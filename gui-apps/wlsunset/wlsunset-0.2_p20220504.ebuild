# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit meson

KEYWORDS="~amd64"
COMMIT="cee422b440b63a1ee3913872674e95486c37f84e"
SRC_URI="https://git.sr.ht/~kennylevinsen/wlsunset/archive/${COMMIT}.tar.gz -> ${P}.tar.gz"

DESCRIPTION="Day/night gamma adjustments for Wayland"
HOMEPAGE="https://sr.ht/~kennylevinsen/wlsunset/"
LICENSE="MIT"
SLOT="0"

BDEPEND="
	dev-util/wayland-scanner
	app-text/scdoc
"
RDEPEND="dev-libs/wayland"
DEPEND="
	${RDEPEND}
	dev-libs/wayland-protocols
"
S="${WORKDIR}/${PN}-${COMMIT}"
RESTRICT="primaryuri"

src_configure() {
	local emesonargs=(
		-Dwerror=false
		-Dman-pages=enabled
	)

	meson_src_configure
}
