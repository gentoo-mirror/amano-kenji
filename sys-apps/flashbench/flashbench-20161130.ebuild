# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit git-r3

DESCRIPTION="Testing tool for managed flash memory devices"
HOMEPAGE="https://github.com/bradfa/flashbench"
EGIT_REPO_URI="https://github.com/bradfa/flashbench.git"
EGIT_BRANCH="dev"
EGIT_COMMIT="7ec66d001c16a5532c7bb78f065c1d99bd3f79dc"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64"

src_install() {
	dobin flashbench
	newbin erase flashbench-erase
	dodoc README
}
