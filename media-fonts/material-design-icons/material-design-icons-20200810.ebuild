# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7
inherit font

GIT_COMMIT="b0edb548aa5156a009513e47fd8c46c7f47db6d8"
DESCRIPTION="Font containing material design icons"
HOMEPAGE="http://materialdesignicons.com/"
SRC_URI="https://github.com/Templarian/MaterialDesign-Font/archive/${GIT_COMMIT}.zip -> ${P}.zip"

LICENSE="OFL-1.1"
SLOT="0"
KEYWORDS="~amd64 ~x86"

S="${WORKDIR}/MaterialDesign-Font-${GIT_COMMIT}"
FONT_S="${S}"
FONT_SUFFIX="ttf"
DOCS="README.md cheatsheet.html"
