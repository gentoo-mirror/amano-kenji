EAPI=8

inherit elisp

DESCRIPTION="A tree-sitter-based Emacs major mode for the Janet programming language"
HOMEPAGE="https://github.com/sogaiu/janet-ts-mode"
COMMIT="1527d9b631a1066188939a0c4e7e48cce1aaa2e3"
SRC_URI="https://github.com/sogaiu/janet-ts-mode/archive/${COMMIT}.tar.gz -> ${P}.tar.gz"
S="${WORKDIR}/${PN}-${COMMIT}"
LICENSE="public-domain"
SLOT="0"
KEYWORDS="~amd64"
DOCS="README.md janet-ts-mode-highlighting.png"
SITEFILE="50${PN}-gentoo.el"
RDEPEND=">=app-editors/emacs-29[tree-sitter]
	dev-libs/tree-sitter-janet-simple"
DEPEND="$RDEPEND"
