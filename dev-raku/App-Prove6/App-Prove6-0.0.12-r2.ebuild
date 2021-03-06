# Copyright 2020-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI="8"

inherit rakudo

DESCRIPTION="Run tests through a TAP harness."
HOMEPAGE="https://raku.land/cpan:LEONT/App::Prove6"
SRC_URI="mirror://cpan/authors/id//L/LE/LEONT/Perl6/${P}.tar.gz"
LICENSE="Artistic-2"
SLOT="0"
KEYWORDS="~amd64"
RESTRICT="primaryuri"
RDEPEND="dev-raku/TAP
	dev-raku/Getopt-Long"
DEPEND="${RDEPEND}"
DOCS="README.md Changes"

src_install() {
	rakudo_src_install
	rakudo_symlink_bin prove6
}
