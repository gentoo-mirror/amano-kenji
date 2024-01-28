EAPI="8"

inherit rakudo

DESCRIPTION="Makefile based distribution builder"
HOMEPAGE="https://raku.land/cpan:NINE/Distribution::Builder::MakeFromJSON"
SRC_URI="mirror://cpan/authors/id//N/NI/NINE/Perl6/${P}.tar.gz"
LICENSE="Artistic-2"
SLOT="0"
KEYWORDS="~amd64"
RESTRICT="primaryuri"
RDEPEND="dev-raku/System-Query"
DEPEND="${RDEPEND}"
DOCS="README.md Changes"
