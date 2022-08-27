EAPI=8
inherit font

DESCRIPTION="Symbols-only fonts from nerd fonts"
HOMEPAGE="https://github.com/ryanoasis/nerd-fonts"
SRC_URI="https://github.com/ryanoasis/nerd-fonts/raw/v${PV}/10-nerd-font-symbols.conf
	1000-em? ( https://github.com/ryanoasis/nerd-fonts/raw/v${PV}/patched-fonts/NerdFontsSymbolsOnly/complete/Symbols-1000-em%20Nerd%20Font%20Complete%20Mono.ttf -> ${P}-Symbols-1000-em-Nerd-Font-Complete-Mono.ttf )
	1000-em? ( https://github.com/ryanoasis/nerd-fonts/raw/v${PV}/patched-fonts/NerdFontsSymbolsOnly/complete/Symbols-1000-em%20Nerd%20Font%20Complete.ttf -> ${P}-Symbols-1000-em-Nerd-Font-Complete.ttf )
	2048-em? ( https://github.com/ryanoasis/nerd-fonts/raw/v${PV}/patched-fonts/NerdFontsSymbolsOnly/complete/Symbols-2048-em%20Nerd%20Font%20Complete%20Mono.ttf -> ${P}-Symbols-2048-em-Nerd-Font-Complete-Mono.ttf )
	2048-em? ( https://github.com/ryanoasis/nerd-fonts/raw/v${PV}/patched-fonts/NerdFontsSymbolsOnly/complete/Symbols-2048-em%20Nerd%20Font%20Complete.ttf -> ${P}-Symbols-2048-em-Nerd-Font-Complete.ttf )"
IUSE="1000-em +2048-em"
REQUIRED_USE="2048-em? ( !1000-em )"
LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
RESTRICT="primaryuri"
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
		mv ${P}-Symbols-1000-em-Nerd-Font-Complete-Mono.ttf "Symbols-1000-em Nerd Font Complete Mono.ttf"
		mv ${P}-Symbols-1000-em-Nerd-Font-Complete.ttf "Symbols-1000-em Nerd Font Complete.ttf"
	fi
	if use 2048-em; then
		mv ${P}-Symbols-2048-em-Nerd-Font-Complete-Mono.ttf "Symbols-2048-em Nerd Font Complete Mono.ttf"
		mv ${P}-Symbols-2048-em-Nerd-Font-Complete.ttf "Symbols-2048-em Nerd Font Complete.ttf"
	fi
	default
}

pkg_postinst() {
	elog "Enable 10-nerd-font-symbols.conf with eselect fontconfig"
}
