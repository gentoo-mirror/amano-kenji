# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3_{4..9} )
inherit distutils-r1 git-r3

EGIT_REPO_URI="https://github.com/coderholic/pyradio.git"

DESCRIPTION=" Command line internet radio player"
HOMEPAGE="http://www.coderholic.com/pyradio"

LICENSE="MIT"
SLOT="0"
KEYWORDS=""

IUSE="+mpv mplayer vlc"
RDEPEND="mpv? ( media-video/mpv net-misc/socat )
mplayer? ( media-video/mplayer )
vlc? ( media-video/vlc )"
