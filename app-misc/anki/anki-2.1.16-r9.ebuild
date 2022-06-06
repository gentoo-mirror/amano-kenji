# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3_{6..9} )
PYTHON_REQ_USE="sqlite"

inherit desktop python-single-r1 xdg

DESCRIPTION="A spaced-repetition memory training program (flash cards)"
HOMEPAGE="https://apps.ankiweb.net"
SRC_URI="https://github.com/ankitects/anki/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="AGPL-3+"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="latex +recording +sound test"
REQUIRED_USE="${PYTHON_REQUIRED_USE}"

RDEPEND="${PYTHON_DEPS}
	$(python_gen_cond_dep '
		dev-python/PyQt5[gui,svg,widgets,${PYTHON_USEDEP}]
		dev-python/PyQtWebEngine[${PYTHON_USEDEP}]
		>=dev-python/httplib2-0.7.4[${PYTHON_USEDEP}]
		dev-python/beautifulsoup4[${PYTHON_USEDEP}]
		dev-python/decorator[${PYTHON_USEDEP}]
		dev-python/markdown[${PYTHON_USEDEP}]
		dev-python/requests[${PYTHON_USEDEP}]
		dev-python/send2trash[${PYTHON_USEDEP}]
		dev-python/jsonschema[${PYTHON_USEDEP}]
	')
	recording? ( media-sound/lame )
	sound? ( media-video/mpv )
	latex? (
		app-text/texlive
		app-text/dvipng
	)
"
DEPEND="${RDEPEND}
	test? ( $(python_gen_cond_dep 'dev-python/nose[${PYTHON_USEDEP}]') )
"

PATCHES=( "${FILESDIR}"/${PN}-2.1.0_beta25-web-folder.patch )

src_prepare() {
	default
	sed -i -e "s/updates=True/updates=False/" \
		aqt/profiles.py || die
	./tools/build_ui.sh
}

src_compile() {
	:;
}

src_test() {
	sed -e "s:nose=nosetests$:nose=\"${EPYTHON} ${EROOT%/}/usr/bin/nosetests\":" \
		-i tools/tests.sh || die
	sed -e "s:nose=nosetests3$:nose=\"${EPYTHON} ${EROOT%/}/usr/bin/nosetests3\":" \
		-i tools/tests.sh || die
	sed -e "s:which nosetests3:which ${EROOT%/}/usr/bin/nosetests3:" \
		-i tools/tests.sh || die
	./tools/tests.sh || die
}

src_install() {
	doicon ${PN}.png
	domenu ${PN}.desktop
	doman ${PN}.1

	dodoc README.md README.development
	python_domodule aqt anki
	python_newscript runanki anki

	# Localization files go into the anki directory:
	python_moduleinto anki
	#python_domodule locale

	# not sure if this is correct, but
	# site-packages/aqt/mediasrv.py wants the directory
	insinto /usr/share/anki
	doins -r web
}
