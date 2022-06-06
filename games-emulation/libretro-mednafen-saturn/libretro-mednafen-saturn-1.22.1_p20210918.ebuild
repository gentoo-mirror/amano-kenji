# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

LIBRETRO_REPO_NAME="libretro/beetle-saturn-libretro"
LIBRETRO_COMMIT_SHA="3b4f639cded95cf27f834b318941940a16ef4d8a"

inherit libretro-core

DESCRIPTION="Standalone port of Mednafen Saturn to the libretro API"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
RESTRICT="primaryuri"
