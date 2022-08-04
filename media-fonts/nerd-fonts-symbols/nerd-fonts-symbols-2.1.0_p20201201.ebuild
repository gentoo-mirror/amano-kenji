# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7
inherit font

DESCRIPTION="Symbols-only fonts from nerd fonts"
HOMEPAGE="https://github.com/ryanoasis/nerd-fonts"
COMMIT="0f15e7d67f8251429276a2b91794822ff9a7fa65"
SRC_URI="https://github.com/ryanoasis/nerd-fonts/raw/${COMMIT}/10-nerd-font-symbols.conf
1000-em? ( https://github.com/ryanoasis/nerd-fonts/raw/${COMMIT}/src/glyphs/Symbols-1000-em%20Nerd%20Font%20Complete.ttf )
2048-em? ( https://github.com/ryanoasis/nerd-fonts/raw/${COMMIT}/src/glyphs/Symbols-2048-em%20Nerd%20Font%20Complete.ttf )"

IUSE="1000-em +2048-em"
REQUIRED_USE="2048-em? ( !1000-em )"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"

S="${WORKDIR}"
FONT_SUFFIX="ttf"
FONT_CONF=( "${S}/10-nerd-font-symbols.conf" )

src_unpack() {
	for f in ${A}
	do
		cp "${DISTDIR}/$f" "${S}"
	done
}

src_prepare() {
	if use 1000-em; then
		mv Symbols-1000-em%20Nerd%20Font%20Complete.ttf "Symbols-1000-em Nerd Font Complete.ttf"
	fi
	if use 2048-em; then
		mv Symbols-2048-em%20Nerd%20Font%20Complete.ttf "Symbols-2048-em Nerd Font Complete.ttf"
	fi
	default
}
