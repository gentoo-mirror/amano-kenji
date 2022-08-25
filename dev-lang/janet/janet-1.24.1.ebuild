EAPI=8

inherit meson

DESCRIPTION="A functional and imperative language for scripting and embedding"
HOMEPAGE="https://janet-lang.org/"
SRC_URI="https://github.com/janet-lang/janet/archive/v${PV}.tar.gz -> ${P}.tar.gz"
LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
DOCS=( CHANGELOG.md CONTRIBUTING.md README.md examples )
RESTRICT="primaryuri"
