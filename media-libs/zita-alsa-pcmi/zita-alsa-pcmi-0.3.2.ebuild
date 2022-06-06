# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit eutils multilib toolchain-funcs

DESCRIPTION="Provides easy access to ALSA PCM devices"
HOMEPAGE="http://kokkinizita.linuxaudio.org/linuxaudio/"
SRC_URI="http://kokkinizita.linuxaudio.org/linuxaudio/downloads/${P}.tar.bz2"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~arm64"
IUSE="tools"

DEPEND="media-libs/alsa-lib"
RDEPEND="${DEPEND}"
DOCS=( AUTHORS README )
PATCHES=( ${FILESDIR}/makefile.diff )

src_compile() {
	tc-export CXX
	cd "${S}/source"
	emake
	if use tools; then
		ln -s "libzita-alsa-pcmi.so.${PV}" libzita-alsa-pcmi.so
		cd "${S}/apps"
		emake
	fi
}

src_install() {
	cd "${S}/source"
	emake PREFIX="${EPREFIX}/usr" LIBDIR="${EPREFIX}/usr/$(get_libdir)" \
		  DESTDIR="${D}" install
	if use tools; then
		cd "${S}/apps"
		emake PREFIX="${EPREFIX}/usr" LIBDIR="${EPREFIX}/usr/$(get_libdir)" \
			  DESTDIR="${D}" install
	fi
	cd "${S}"
	einstalldocs
}
