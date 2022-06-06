# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3_{6..9} )

inherit distutils-r1 toolchain-funcs

DESCRIPTION="A Python wrapper for the ALSA API"
HOMEPAGE="https://github.com/larsimmisch/pyalsaaudio"
SRC_URI="https://github.com/larsimmisch/${PN}/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="PSF-2.4"
SLOT="0"
KEYWORDS="~amd64"
IUSE="doc"

RDEPEND="media-libs/alsa-lib"
DEPEND="${RDEPEND}
	doc? ( >=dev-python/sphinx-0.6[${PYTHON_USEDEP}] )"

RESTRICT="test" # Direct access to ALSA, shouln't be used

python_compile_all() {
	use doc && emake -C doc html
}

python_compile() {
	python_is_python3 || local -x CFLAGS="${CFLAGS} -fno-strict-aliasing"
	distutils-r1_python_compile
}

python_test() {
	"${PYTHON}" test.py -v || die "Tests fail with ${EPYTHON}"
}

python_install_all() {
	use doc && local HTML_DOCS=( doc/html/. )

	distutils-r1_python_install_all
}
