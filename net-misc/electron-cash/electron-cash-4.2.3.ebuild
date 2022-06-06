# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI="7"

PYTHON_COMPAT=( python3_{6..9} )

PYTHON_REQ_USE="ncurses?"

inherit distutils-r1 xdg

DESCRIPTION="Lightweight Bitcoin Cash client (BCH fork of Electrum)"
HOMEPAGE="https://github.com/Electron-Cash/Electron-Cash"
SRC_URI="https://github.com/Electron-Cash/Electron-Cash/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="ncurses qrcode +qt5"

REQUIRED_USE="
	|| ( ncurses qt5 )
	qrcode? ( qt5 )
"

RDEPEND="
	dev-python/dnspython[${PYTHON_USEDEP}]
	dev-python/ecdsa[${PYTHON_USEDEP}]
	dev-python/jsonrpclib[${PYTHON_USEDEP}]
	dev-python/pbkdf2[${PYTHON_USEDEP}]
	dev-python/pyaes[${PYTHON_USEDEP}]
	dev-python/PySocks[${PYTHON_USEDEP}]
	dev-python/qrcode[${PYTHON_USEDEP}]
	dev-python/requests[${PYTHON_USEDEP}]
	dev-python/setuptools[${PYTHON_USEDEP}]
	dev-python/six[${PYTHON_USEDEP}]
	dev-python/protobuf-python[${PYTHON_USEDEP}]
	net-libs/stem[${PYTHON_USEDEP}]
	qrcode? ( media-gfx/zbar[v4l] )
	qt5? (
		dev-python/PyQt5[gui,widgets,${PYTHON_USEDEP}]
	)
	ncurses? ( dev-lang/python )
	dev-libs/libsecp256k1
"

S="${WORKDIR}/Electron-Cash-${PV}"
PATCHES=( "${FILESDIR}/3.3.6-no-user-root.patch" )
DOCS="RELEASE-NOTES README.rst"

src_prepare() {
	xdg_environment_reset
	distutils-r1_src_prepare
}
