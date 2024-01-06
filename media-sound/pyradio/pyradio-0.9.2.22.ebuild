EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3_{7..12} )
inherit distutils-r1 desktop

SRC_URI="https://github.com/coderholic/${PN}/archive/${PV}.tar.gz -> ${P}.tar.gz"
DESCRIPTION="Command line internet radio player"
HOMEPAGE="http://www.coderholic.com/pyradio"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
RDEPEND="|| ( media-video/mpv
	media-video/mplayer
	media-video/vlc )
	dev-python/requests[${PYTHON_USEDEP}]
	dev-python/dnspython[${PYTHON_USEDEP}]
	dev-python/psutil[${PYTHON_USEDEP}]
	dev-python/rich[${PYTHON_USEDEP}]
	dev-python/netifaces[${PYTHON_USEDEP}]
	dev-python/python-dateutil[${PYTHON_USEDEP}]"
DOCS="README.md docs/*.md"

src_prepare() {
	distutils-r1_src_prepare
	# This is required for preventing pyradio update notification.
	sed -i 's/distro = None/distro = Gentoo Linux/' pyradio/config
}

src_install() {
	distutils-r1_src_install
	doman docs/pyradio.1
	doman docs/pyradio_rb.1
	doman docs/pyradio_rec.1
	doman docs/pyradio_server.1
	domenu devel/pyradio.desktop
	doicon --size 512 devel/pyradio.png
}
