# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit janet-module

DESCRIPTION="Simple path manipulation module for Janet."
HOMEPAGE="https://github.com/janet-lang/path"
GIT_COMMIT="d8619960d428c45ebb784600771a7c584ae49431"
SRC_URI="https://github.com/janet-lang/path/archive/${GIT_COMMIT}.tar.gz -> janet-${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"

DEPEND=""
RDEPEND=""
S="${WORKDIR}/${PN}-${GIT_COMMIT}"
DOCS="README.md"
