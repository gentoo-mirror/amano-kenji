# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit eutils multilib toolchain-funcs

DESCRIPTION="zita-ajbridge allows an ALSA device to be used as a jack client."
HOMEPAGE="https://kokkinizita.linuxaudio.org/linuxaudio/zita-ajbridge-doc/quickguide.html"
SRC_URI="http://kokkinizita.linuxaudio.org/linuxaudio/downloads/${P}.tar.bz2"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~arm64"
IUSE=""
S="${WORKDIR}/${P}/source"
DOCS=( ../{AUTHORS,README} )
PATCHES=( ${FILESDIR}/makefile.diff )

DEPEND="media-libs/alsa-lib
	>=media-libs/zita-alsa-pcmi-0.3.2
	>=media-libs/zita-resampler-1.3.0
	|| ( media-sound/jack2[alsa] media-sound/jack-audio-connection-kit[alsa] )"

src_compile() {
	tc-export CXX
	emake
}

src_install() {
	emake PREFIX="${EPREFIX}/usr" LIBDIR="${EPREFIX}/usr/$(get_libdir)" DESTDIR="${D}" install
	einstalldocs
}
