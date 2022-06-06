# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python{3_5,3_6,3_7,3_8,3_9} )
inherit distutils-r1

DESCRIPTION="Enable git-like did-you-mean feature in click."
HOMEPAGE="https://github.com/click-contrib/click-didyoumean"
GIT_COMMIT="04a05ab9cd2bb1cf1d39933b1177ab2f60540bce"
SRC_URI="https://github.com/click-contrib/${PN}/archive/${GIT_COMMIT}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
REQUIRED_USE="${PYTHON_REQUIRED_USE}"

DEPEND="
	dev-python/click[${PYTHON_USEDEP}]"
RDEPEND="${DEPEND}"
S="${WORKDIR}/${PN}-${GIT_COMMIT}"
