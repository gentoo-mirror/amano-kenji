# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3_{4..11} )
inherit distutils-r1

SRC_URI="https://github.com/coderholic/${PN}/archive/${PV}.tar.gz -> ${P}.tar.gz"
DESCRIPTION=" Command line internet radio player"
HOMEPAGE="http://www.coderholic.com/pyradio"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
RDEPEND="|| ( ( media-video/mpv net-misc/socat )
	media-video/mplayer
	media-video/vlc )"
