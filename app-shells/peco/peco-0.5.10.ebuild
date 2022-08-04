# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit go-module

DESCRIPTION="Simplistic interactive filtering tool"
HOMEPAGE="https://github.com/peco/peco"
SRC_URI="https://github.com/peco/peco/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz
	mirror://amano-kenji/${P}-deps.tar.xz"
LICENSE="Apache-2.0 BSD BSD-2 MIT"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
DOCS=( Changes README.md )

src_compile() {
	go build ./cmd/... || die "build failed"
}

src_test() {
	go test ./... || die "test failed"
}

src_install() {
	einstalldocs
	dobin peco
}
