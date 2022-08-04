# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="List all secret items using libsecret (e.g. GNOME Keyring)."
HOMEPAGE="https://gitlab.com/GrantMoyer/lssecret"
COMMIT="722013dc982e56f8127d3ab0105606410d4e1744"
SRC_URI="https://gitlab.com/GrantMoyer/lssecret/-/archive/${COMMIT}/lssecret-${COMMIT}.tar.bz2 -> ${P}.tar.bz2"
LICENSE="Unlicense"
SLOT="0"
KEYWORDS="~amd64"
RESTRICT="primaryuri"
DEPEND="app-crypt/libsecret"
RDEPEND="${DEPEND}"
S="${WORKDIR}/${PN}-${COMMIT}"
DOCS=(README.md)

src_install() {
	einstalldocs
	dobin lssecret
}
