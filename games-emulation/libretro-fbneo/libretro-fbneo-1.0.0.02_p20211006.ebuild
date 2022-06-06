# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

LIBRETRO_REPO_NAME="libretro/FBNeo"
LIBRETRO_COMMIT_SHA="98441f9b0e252c5b3b999be4ef574c144205a64b"

inherit libretro-core

DESCRIPTION="Fork of Final Burn Alpha"
HOMEPAGE="https://github.com/libretro/FBNeo"
KEYWORDS="~amd64 ~x86"

LICENSE="FBA"
SLOT="0"

DEPEND="media-libs/libsdl2
	media-libs/sdl-image"
RDEPEND="${DEPEND}
	games-emulation/libretro-info"

S="${WORKDIR}/FBNeo-${LIBRETRO_COMMIT_SHA}/src/burner/libretro"
RESTRICT="primaryuri"
