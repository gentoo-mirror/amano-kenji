# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit janet-module

DESCRIPTION="A janet module for shell functions."
HOMEPAGE="https://github.com/andrewchambers/janet-process"
COMMIT="7f83f6f717e62ea0ecdbade92daed326d734c89f"
SRC_URI="https://github.com/andrewchambers/janet-sh/archive/${COMMIT}.tar.gz -> janet-${P}.tar.gz"

RESTRICT="primaryuri"
LICENSE="public-domain"
SLOT="0"
KEYWORDS="~amd64"

DEPEND=""
RDEPEND=">=dev-janet/posix-spawn-0_alpha20200512"
S="${WORKDIR}/janet-${PN}-${COMMIT}"
DOCS="README.md"
