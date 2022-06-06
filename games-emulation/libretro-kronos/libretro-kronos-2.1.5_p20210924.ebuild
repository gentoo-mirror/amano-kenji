# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

LIBRETRO_REPO_NAME="libretro/kronos"
COMMIT="f2359c25f3fc7180be1ad890ba477ad415957ef6"
LIBRETRO_COMMIT_SHA="${COMMIT}"
SRC_URI="https://git.libretro.com/libretro/kronos/-/archive/${COMMIT}/kronos-${COMMIT}.tar.bz2 -> ${P}.tar.bz2"

inherit libretro-core

DESCRIPTION="Kronos libretro port"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"

S="${S}/yabause/src/libretro"
RESTRICT="primaryuri"
