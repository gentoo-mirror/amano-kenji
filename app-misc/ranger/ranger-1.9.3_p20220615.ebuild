# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8
PYTHON_COMPAT=( python3_{6..11} )
PYTHON_REQ_USE="ncurses"

inherit distutils-r1
distutils_enable_tests pytest

COMMIT="7e2d1613c9c52b7c2090eb3db49c65a8ec42c219"
SRC_URI="https://github.com/ranger/ranger/archive/${COMMIT}.tar.gz -> ${P}.tar.gz"
KEYWORDS="~amd64"
DESCRIPTION="A vim-inspired file manager for the console"
HOMEPAGE="https://ranger.github.io/"
LICENSE="GPL-3"
SLOT="0"
BDEPEND="test? ( dev-python/flake8
	dev-python/pylint )"
S="${WORKDIR}/${PN}-${COMMIT}"

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
