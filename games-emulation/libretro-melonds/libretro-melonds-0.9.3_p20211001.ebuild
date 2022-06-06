# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

LIBRETRO_REPO_NAME="libretro/melonDS"
LIBRETRO_COMMIT_SHA="e362d5c02d5379410be838de53586db3d114c43a"

inherit libretro-core

DESCRIPTION="libretro implementation of melonDS. (NintendoDS)"
HOMEPAGE="https://github.com/libretro/melonDS"
KEYWORDS="~amd64 ~x86"

LICENSE="GPL-3"
SLOT="0"

DEPEND=""
RDEPEND="${DEPEND}
	games-emulation/libretro-info"
RESTRICT="primaryuri"
