# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit janet-module

DESCRIPTION="A janet HTTP client"
HOMEPAGE="https://github.com/joy-framework/http"
GIT_COMMIT="fc18c72e31259b6fc80c932990adaa313f86f93d"
SRC_URI="https://github.com/joy-framework/http/archive/${GIT_COMMIT}.tar.gz -> janet-${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"

DEPEND="net-misc/curl"
RDEPEND="${DEPEND}"
S="${WORKDIR}/${PN}-${GIT_COMMIT}"
DOCS="README.md"
