# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit janet-module

DESCRIPTION="A process API for janet wrapping posix-spawn(3)."
HOMEPAGE="https://github.com/andrewchambers/janet-posix-spawn"
GIT_COMMIT="5a3689c250a207186bcb1a30f131d71e45b8cea6"
SRC_URI="https://github.com/andrewchambers/janet-posix-spawn/archive/${GIT_COMMIT}.tar.gz -> janet-${P}.tar.gz"

LICENSE="public-domain"
SLOT="0"
KEYWORDS="~amd64"

DEPEND=""
RDEPEND=""
S="${WORKDIR}/janet-${PN}-${GIT_COMMIT}"
DOCS="README.md API.md"
