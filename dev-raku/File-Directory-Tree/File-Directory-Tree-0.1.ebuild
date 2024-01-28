EAPI="8"

inherit rakudo

COMMIT="759a9c90331df22a49de358fe89b2f65bde1cb6a"

DESCRIPTION="Module for creating and deleting directories"
HOMEPAGE="https://raku.land/github:labster/File::Directory::Tree"
SRC_URI="https://github.com/labster/p6-file-directory-tree/archive/${COMMIT}.tar.gz -> ${P}.tar.gz"
LICENSE="Artistic-2"
SLOT="0"
KEYWORDS="~amd64"
RESTRICT="primaryuri"
DOCS="README.md"
S="${WORKDIR}/p6-file-directory-tree-${COMMIT}"
