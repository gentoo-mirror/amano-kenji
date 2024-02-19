EAPI=8

inherit meson

DESCRIPTION="A functional and imperative language for scripting and embedding"
HOMEPAGE="https://janet-lang.org/"
COMMIT="e66dc14b3ad6210e1bfa398e5c8fbe266cbfdd36"
SRC_URI="https://github.com/janet-lang/janet/archive/${COMMIT}.tar.gz -> ${P}.tar.gz"
LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
DOCS=( CHANGELOG.md CONTRIBUTING.md README.md examples )
RESTRICT="primaryuri"
S="${WORKDIR}/${PN}-${COMMIT}"
