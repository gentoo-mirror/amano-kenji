# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

LIBRETRO_REPO_NAME="libretro/dolphin"
LIBRETRO_COMMIT_SHA="3370f7693be95c23ac779e5172ff52b7eb2861a7"

inherit libretro-core cmake

DESCRIPTION="A Gamecube/Wii emulator core for libretro"
HOMEPAGE="https://github.com/libretro/dolphin"
KEYWORDS="~amd64"

LICENSE="GPL-2"
SLOT="0"

RDEPEND="
	dev-libs/hidapi=
	dev-libs/libfmt=
	dev-libs/lzo=
	dev-libs/pugixml
	dev-qt/qtconcurrent
	media-libs/libpng
	media-libs/libsfml
	media-libs/mesa[egl]
	net-libs/enet
	net-libs/mbedtls
	net-misc/curl
	sys-libs/readline
	sys-libs/zlib
	x11-libs/libXext
	x11-libs/libXi
	x11-libs/libXrandr
	virtual/libusb
	virtual/opengl
"
RDEPEND="${DEPEND}
	games-emulation/libretro-info"

ASSETS_DIR="/usr/share/libretro/dolphin"

src_prepare() {
	libretro-core_src_prepare
	cmake_src_prepare
}

src_configure() {
	local mycmakeargs=(
		-DCCACHE_BIN=CCACHE_BIN-NOTFOUND
		-DENABLE_LLVM=OFF
		-DBUILD_SHARED_LIBS=OFF
		-DLIBRETRO=ON
		-DLIBRETRO_STATIC=1
		-DENABLE_QT=0
		-DUSE_SHARED_ENET=ON
		-DCMAKE_BUILD_TYPE=Release
		-DCMAKE_INSTALL_PREFIX=/usr
	)
	cmake_src_configure
}

src_compile() {
	cmake_src_compile
}

src_install() {
	dodir "${ASSETS_DIR}/Data"
	cp -R Data/Sys "${ED}/${ASSETS_DIR}/Data" || die "Install failed"
	# ${BUILD_DIR} comes from cmake.eclass
	S="${BUILD_DIR}"
	libretro-core_src_install
}

pkg_postinst() {
	ewarn "You need to symlink ${ASSETS_DIR}/Data/Sys"
	ewarn "to /path/to/retroarch_system_directory/dolphin-emu/Sys"
}
