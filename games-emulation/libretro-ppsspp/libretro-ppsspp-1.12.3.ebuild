# Copyright 2021-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

LIBRETRO_REPO_NAME="hrydgard/ppsspp"
LIBRETRO_COMMIT_SHA="ce0a45cf0fcdd5bebf32208b9998f68dfc1107b7"

inherit flag-o-matic git-r3 libretro-core

DESCRIPTION="libretro implementation of PPSSPP"
HOMEPAGE="https://github.com/hrydgard/ppsspp"
KEYWORDS="~amd64 ~x86"
EGIT_REPO_URI="https://github.com/hrydgard/ppsspp.git"
EGIT_COMMIT="ce0a45cf0fcdd5bebf32208b9998f68dfc1107b7"
SRC_URI=""

LICENSE="GPL-2"
SLOT="0"
IUSE="+gles2"

DEPEND="x11-libs/libICE
	sys-libs/zlib
	x11-libs/libXt
	x11-libs/libXext
	media-libs/mesa
	gles2? ( media-libs/mesa[gles2] )
	gles2? ( dev-libs/wayland )
	!games-emulation/psp-assets"
RDEPEND="${DEPEND}
	games-emulation/libretro-info"

EGIT_SUBMODULES=( '*' )

S="${WORKDIR}/${P}/libretro"

ASSETS_DIR=/usr/share/libretro/PPSSPP

src_unpack() {
	git-r3_src_unpack
}

src_prepare() {
	libretro-core_src_prepare
	sed -i -e 's/"${GIT_VERSION}"/${GIT_VERSION}/' Makefile.common || die "fail"
}

src_compile() {
	use gles2 && append-ldflags -lEGL
	myemakeargs=(
		$(usex gles2 "GLES=1" "")
	)
	libretro-core_src_compile
}

src_install() {
	dodir ${ASSETS_DIR}
	cp -R "${S}"/../assets/* "${D}/${ASSETS_DIR}" || die "Install failed!"
	libretro-core_src_install
}

pkg_postinst() {
	ewarn ""
	ewarn "You need to symlink \"${ASSETS_DIR}\""
	ewarn "to the \"system_directory/\" directory of your user."
	ewarn "As retroarch user:"
	ewarn "When upgrading from old assets:"
	ewarn "\$ rm -r ~/.local/share/retroarch/system/PPSSPP/"
	ewarn "To symlink the assets:"
	ewarn "\$ mkdir -p ~/.local/share/retroarch/system"
	ewarn "\$ ln -s ${ASSETS_DIR} ~/.local/share/retroarch/system/"
	ewarn ""
	ewarn ""
}
