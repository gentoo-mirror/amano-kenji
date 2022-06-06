# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7
PYTHON_COMPAT=( python3_{6..9} )
PYTHON_REQ_USE="ncurses"

inherit distutils-r1

EGIT_REPO_URI="https://github.com/ranger/ranger.git"
EGIT_COMMIT="1654128f955b320354eea98a0bb6970a159ab16f"
inherit git-r3
KEYWORDS="~amd64"

DESCRIPTION="A vim-inspired file manager for the console"
HOMEPAGE="https://ranger.github.io/"
LICENSE="GPL-3"
SLOT="0"

RDEPEND="virtual/pager"

distutils_enable_tests pytest

src_prepare() {
	# use versioned doc path
	sed -i "s|share/doc/ranger|share/doc/${PF}|" setup.py doc/ranger.1 || die

	distutils-r1_src_prepare
}

pkg_postinst() {
	if [[ -z ${REPLACING_VERSIONS} ]]; then
		elog "Ranger has many optional dependencies to support enhanced file previews."
		elog "See the README or homepage for more details."
	fi
}
