EAPI="8"

inherit rakudo

DESCRIPTION="Create temporary files and directories."
HOMEPAGE="https://raku.land/zef:rbt/File::Temp"
SRC_URI="mirror://zef/F/IL/FILE_TEMP/69f79c4c08341b8e5afcc414585cea34083ec4f5.tar.gz -> ${P}.tar.gz"
LICENSE="Artistic-2"
SLOT="0"
KEYWORDS="~amd64"
RESTRICT="primaryuri"
DOCS="README.md"
RDEPEND="dev-raku/File-Directory-Tree"
DEPEND="${RDEPEND}"
S="${WORKDIR}/dist"
