# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit janet-module

DESCRIPTION="Janet data notation"
HOMEPAGE="https://github.com/andrewchambers/janet-jdn"
COMMIT="c0951f6978555268a24d86eee2f118327328b40b"
SRC_URI="https://github.com/andrewchambers/janet-jdn/archive/${COMMIT}.tar.gz -> janet-${P}.tar.gz"

RESTRICT="primaryuri"
LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"

DEPEND=""
RDEPEND=""
S="${WORKDIR}/janet-${PN}-${COMMIT}"
DOCS="README.md"
