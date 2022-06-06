# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit font

DESCRIPTION="icon font that extends font-awesome"
HOMEPAGE="https://github.com/AndreLGava/font-awesome-extension"
SRC_URI="https://github.com/AndreLGava/font-awesome-extension/archive/v.${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 x86"

S="${WORKDIR}/${PN}-v.${PV}"
FONT_S="${S}/fonts"
FONT_SUFFIX="ttf"
