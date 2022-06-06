# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python{3_4,3_5,3_6,3_7,3_8,3_9} )
inherit distutils-r1 git-r3

DESCRIPTION="A complete replacement for i3status with many status modules"
HOMEPAGE="https://github.com/enkore/i3pystatus"
EGIT_REPO_URI="https://github.com/enkore/i3pystatus.git"
LICENSE="MIT"
KEYWORDS=""
SLOT="0"
IUSE=""
REQUIRED_USE="${PYTHON_REQUIRED_USE}"
DEPEND=""
RDEPEND=""
