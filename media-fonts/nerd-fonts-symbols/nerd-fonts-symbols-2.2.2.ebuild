EAPI=8
inherit font

DESCRIPTION="Symbols-only fonts from nerd fonts"
HOMEPAGE="https://github.com/ryanoasis/nerd-fonts"
SRC_URI="https://github.com/ryanoasis/nerd-fonts/raw/v${PV}/10-nerd-font-symbols.conf -> ${P}-10-nerd-font-symbols.conf
	https://github.com/ryanoasis/nerd-fonts/releases/download/v${PV}/NerdFontsSymbolsOnly.zip -> ${P}-NerdFontsSymbolsOnly.zip"
LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
RESTRICT="primaryuri"
S="${WORKDIR}"
FONT_SUFFIX="ttf"
FONT_CONF=( "${S}/10-nerd-font-symbols.conf" )
BDEPEND="app-arch/unzip"

src_unpack() {
	cp "${DISTDIR}/${P}-10-nerd-font-symbols.conf" 10-nerd-font-symbols.conf
	unpack "${P}-NerdFontsSymbolsOnly.zip"
}

src_prepare() {
	default
	rm *Windows*.ttf
}

pkg_postinst() {
	elog "Enable 10-nerd-font-symbols.conf with eselect fontconfig"
}
