# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

LIBRETRO_REPO_NAME="libretro/blastem"
LIBRETRO_COMMIT_SHA="0786858437ed71996f43b7af0fbe627eb88152fc"

inherit libretro-core

DESCRIPTION="A fast and accurate Genesis emulator"
HOMEPAGE="https://github.com/libretro/blastem"
KEYWORDS="~amd64 ~x86"

LICENSE="GPL-3"
SLOT="0"

# Doesn't build with custom cflags
CFLAGS=""

LIBRETRO_CORE_LIB_FILE="${S}/blastem_libretro.so"

DEPEND=""
RDEPEND="${DEPEND}
	games-emulation/libretro-info"
RESTRICT="primaryuri"
