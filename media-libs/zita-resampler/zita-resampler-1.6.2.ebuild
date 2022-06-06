# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit eutils multilib toolchain-funcs

DESCRIPTION="A C++ library for resampling audio signals"
HOMEPAGE="http://kokkinizita.linuxaudio.org/linuxaudio/zita-resampler/resampler.html"
SRC_URI="http://kokkinizita.linuxaudio.org/linuxaudio/downloads/${P}.tar.bz2"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~arm64"
IUSE="tools"

DEPEND="
	tools? ( media-libs/libsndfile )
"
RDEPEND="${DEPEND}"

PATCHES=( "${FILESDIR}/makefile.diff" )
HTML_DOCS=( docs/filt1.png docs/filt2.png docs/inpdist.png docs/resampler.html
			docs/src-1kHz.png docs/zita-1kHz.png docs/zitadocs.css )
DOCS=( AUTHORS README )

src_compile() {
	tc-export CXX
	cd "${S}/source"
	emake
	if use tools; then
		ln -s "libzita-resampler.so.${PV}" libzita-resampler.so
		cd "${S}/apps"
		emake
	fi
}

src_install() {
	cd "${S}/source"
	emake DESTDIR="${D}" PREFIX="${EPREFIX}/usr" LIBDIR="${EPREFIX}/usr/$(get_libdir)" install
	if use tools; then
		cd "${S}/apps"
		emake DESTDIR="${D}" PREFIX="/usr" install
	fi
	cd "${S}"
	einstalldocs
}
