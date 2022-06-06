# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit janet-module

DESCRIPTION="A process API for janet wrapping posix-spawn(3)."
HOMEPAGE="https://github.com/andrewchambers/janet-posix-spawn"
GIT_COMMIT="b744ba7231d47f2024f3ddd8f31bf653a2ee3e50"
SRC_URI="https://github.com/andrewchambers/janet-posix-spawn/archive/${GIT_COMMIT}.tar.gz -> janet-${P}.tar.gz"

LICENSE="public-domain"
SLOT="0"
KEYWORDS="~amd64"

DEPEND=""
RDEPEND=""
S="${WORKDIR}/janet-${PN}-${GIT_COMMIT}"
DOCS="README.md API.md"
