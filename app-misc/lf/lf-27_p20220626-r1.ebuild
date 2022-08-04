# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit go-module bash-completion-r1 desktop xdg

DESCRIPTION="a terminal file manager written in Go"
HOMEPAGE="https://github.com/gokcehan/lf"
COMMIT="aee5c3371fdbf26cbca2ae6c9ccb4fcb2b7bb29d"
SRC_URI="https://github.com/gokcehan/lf/archive/${COMMIT}.tar.gz -> ${P}.tar.gz
	mirror://amano-kenji/${P}-deps.tar.xz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
RESTRICT="primaryuri"

DEPEND=""
RDEPEND=""
S="${WORKDIR}/${PN}-${COMMIT}"
DOCS="README.md etc/lfrc.example"

src_compile() {
	go build || die
}

src_install() {
	dobin lf
	einstalldocs

	insinto /usr/share/${PN}
	doins etc/lfcd.sh
	doman lf.1

	# bash completion
	newbashcomp etc/lf.bash lf
	# zsh completion
	insinto /usr/share/zsh/site-functions
	newins etc/lf.zsh "_lf"
	# fish
	insinto /usr/share/fish/vendor_completions.d
	doins etc/lf.fish
	insinto /usr/share/fish/vendor_functions.d
	doins etc/lfcd.fish

	domenu "lf.desktop"
}
