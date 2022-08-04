# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit go-module

DESCRIPTION="a small Clojure interpreter and linter written in Go."
HOMEPAGE="https://joker-lang.org/"
SRC_URI="https://github.com/candid82/joker/archive/v${PV}.tar.gz -> ${P}.tar.gz
	mirror://amano-kenji/${P}-deps.tar.xz"

LICENSE="EPL-1.0"
SLOT="0"
KEYWORDS="~amd64"

DEPEND=">=dev-lang/go-1.14"
RDEPEND=""
DOCS=( DEVELOPER.md LIBRARIES.md README.md docs/misc/lib-loader.md )
HTML_DOCS="docs/*.html docs/*.css docs/*.png docs/*.js"

src_compile() {
	go generate ./... || die
	go vet ./... || die
	go build || die
}

src_install() {
	einstalldocs
	dobin joker
}
