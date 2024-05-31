EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3_{8..12} )
inherit distutils-r1 desktop

SRC_URI="https://github.com/coderholic/${PN}/archive/${PV}.tar.gz -> ${P}.tar.gz"
DESCRIPTION="Command line internet radio player"
HOMEPAGE="http://www.coderholic.com/pyradio"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
# media-fonts/dejavu is for Unicode Geometric Shapes Block used by pyradio
RDEPEND="|| ( media-video/mpv
	media-video/mplayer
	media-video/vlc )
	dev-python/requests[${PYTHON_USEDEP}]
	dev-python/dnspython[${PYTHON_USEDEP}]
	dev-python/psutil[${PYTHON_USEDEP}]
	dev-python/rich[${PYTHON_USEDEP}]
	dev-python/netifaces[${PYTHON_USEDEP}]
	dev-python/python-dateutil[${PYTHON_USEDEP}]
	x11-misc/xdg-utils
	media-fonts/dejavu"
DOCS="README.md docs/*.md"

src_prepare() {
	distutils-r1_src_prepare
	# This step is required for linux distros.
	sed -i 's/distro = None/distro = Gentoo Linux/' pyradio/config
	sed -i 's/xdg_compliant = False/xdg_compliant = True/' pyradio/config
}

src_install() {
	distutils-r1_src_install
	doman docs/pyradio-client.1
	doman docs/pyradio.1
	doman docs/pyradio_rb.1
	doman docs/pyradio_rec.1
	doman docs/pyradio_server.1
	domenu devel/pyradio.desktop
	doicon --size 512 devel/pyradio.png
}
