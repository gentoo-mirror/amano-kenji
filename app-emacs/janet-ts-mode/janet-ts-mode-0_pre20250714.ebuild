EAPI=8

inherit elisp

DESCRIPTION="A tree-sitter-based Emacs major mode for the Janet programming language"
HOMEPAGE="https://github.com/sogaiu/janet-ts-mode"
COMMIT="79a5c6e57afb6d964c9a963c2db82b6c5aa6d51f"
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
