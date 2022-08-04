# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{8..11} )
inherit distutils-r1

DESCRIPTION="dbus-service to serve secret-service api with pass backend"
HOMEPAGE="https://github.com/mdellweg/pass_secret_service"
COMMIT="fadc09be718ae1e507eeb8719f3a2ea23edb6d7a"
SRC_URI="https://github.com/mdellweg/${PN}/archive/${COMMIT}.tar.gz -> ${P}.tar.gz"
LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64"
RESTRICT="primaryuri"
RDEPEND="dev-python/click[${PYTHON_USEDEP}]
	dev-python/cryptography[${PYTHON_USEDEP}]
	dev-python/dbus-next[${PYTHON_USEDEP}]
	dev-python/decorator[${PYTHON_USEDEP}]
	dev-python/pypass[${PYTHON_USEDEP}]"
S="${WORKDIR}/${PN}-${COMMIT}"
DOCS=( README.md AUTHORS )

pkg_postinst() {
	elog "You may want to override"
	elog "/usr/share/dbus-1/services/org.freedesktop.secrets.service with"
	elog "org.freedesktop.secrets.service in"
	elog "\$XDG_DATA_DIRS/dbus-1/services or \$XDG_DATA_HOME/dbus-1/services"
	elog
	elog "Ensure session dbus was started by window manager or login manager"
	elog
	elog "If you want to unlock pass automatically upon login,"
	elog "set up pam-gnupg"
}
