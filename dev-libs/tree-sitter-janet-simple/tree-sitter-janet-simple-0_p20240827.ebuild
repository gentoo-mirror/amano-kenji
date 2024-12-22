EAPI=8

inherit tree-sitter-grammar

DESCRIPTION="A Janet grammar for tree-sitter."
HOMEPAGE="https://github.com/sogaiu/tree-sitter-janet-simple"
COMMIT="12bfab7db8a5f5b1d774ef84b5831acd34936071"
SRC_URI="https://github.com/sogaiu/tree-sitter-janet-simple/archive/$COMMIT.tar.gz -> ${P}.tar.gz"
S="$WORKDIR/$PN-$COMMIT"
LICENSE="public-domain"
SLOT="0"
KEYWORDS="~amd64"
