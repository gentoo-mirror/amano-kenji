# Copyright 2020-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI="8"

inherit rakudo

DESCRIPTION="A command line tool for renaming files in any text editor."
HOMEPAGE="https://codeberg.org/amano.kenji/raku-File-Name-Editor"
SRC_URI="https://360.zef.pm/F/IL/FILE_NAME_EDITOR/112956dc6a86a25c53057ac335433e149a2b9264.tar.gz -> ${P}.tar.gz"
LICENSE="public-domain"
SLOT="0"
KEYWORDS="~amd64"
RESTRICT="primaryuri"
DOCS="README.md"
RDEPEND="dev-raku/File-Temp"
S="${WORKDIR}/dist"

src_install() {
	rakudo_src_install
	rakudo_symlink_bin file-name-editor
}
