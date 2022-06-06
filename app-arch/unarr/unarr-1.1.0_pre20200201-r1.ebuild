# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cmake

DESCRIPTION="A lightweight decompression library with support for rar, tar and zip archives"
HOMEPAGE="https://github.com/selmf/unarr"
GIT_COMMIT="7fa227366e8a3ff83eae6f9734644f4d5f257f39"
SRC_URI="https://github.com/selmf/unarr/archive/${GIT_COMMIT}.tar.gz -> ${P}.tar.gz"
S="${WORKDIR}/${PN}-${GIT_COMMIT}"
KEYWORDS="~amd64"
LICENSE="LGPL-3"
SLOT="0"
IUSE="+7z"

DEPEND="
	sys-libs/zlib
	app-arch/bzip2
	app-arch/xz-utils
"
RDEPEND="${DEPEND}"
DOCS=( CHANGELOG.md README.md )

src_configure() {
	local mycmakeargs=(
		-DENABLE_7Z=$(usex 7z ON OFF)
	)
	cmake-utils_src_configure
}
