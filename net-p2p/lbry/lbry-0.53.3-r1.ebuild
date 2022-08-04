# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit xdg

DESCRIPTION="A browser for the LBRY network, a digital marketplace controlled by its users."
HOMEPAGE="https://lbry.com/"
SRC_URI="https://github.com/lbryio/lbry-desktop/releases/download/v${PV}/LBRY_${PV}.deb -> ${P}.deb"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
QA_PREBUILT="*"
RESTRICT="primaryuri"

RDEPEND="
	x11-libs/libnotify
	x11-libs/libXtst
	dev-libs/nss
	dev-libs/libappindicator
	media-libs/alsa-lib
	net-print/cups
"

S="${WORKDIR}"

src_unpack() {
	unpack ${A}
	unpack "${S}"/data.tar.xz
	rm "${S}"/{control,data,debian}* || die
}

src_install() {
	doins -r *
	rm -rd "${ED}"/usr/share/doc || die
	fperms 0755 /opt/LBRY/lbry || die
	fperms 0755 /opt/LBRY/resources/static/daemon/lbrynet || die
	dosym ../../opt/LBRY/lbry /usr/bin/lbry
}
