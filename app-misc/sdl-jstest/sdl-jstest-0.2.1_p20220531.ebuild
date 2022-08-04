# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit cmake

DESCRIPTION="Test joysticks with SDL"
SRC_URI="mirror://amano-kenji/${P}.tar.bz2"
HOMEPAGE="https://gitlab.com/sdl-jstest/sdl-jstest"
LICENSE="GPL-3+"
SLOT="0"
KEYWORDS="~amd64"
RESTRICT="primaryuri"
IUSE="sdl +sdl2"
BDEPEND=""
RDEPEND="sdl? ( >=media-libs/libsdl-1.2 )
	sdl2? ( media-libs/libsdl2[haptic] )
	>=sys-libs/ncurses-5"
DOCS="README.md"

src_configure() {
	local mycmakeargs=(
		-DBUILD_SDL_JSTEST=$(usex sdl)
		-DBUILD_SDL2_JSTEST=$(usex sdl2)
	)
	cmake_src_configure
}
