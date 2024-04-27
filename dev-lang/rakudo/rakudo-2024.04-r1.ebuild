# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="A compiler for the Raku programming language"
HOMEPAGE="https://rakudo.org
	https://github.com/rakudo/rakudo"
SRC_URI="https://rakudo.org/dl/${PN}/${P}.tar.gz"
LICENSE="Artistic-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
RESTRICT="!test? ( test )"

CDEPEND="~dev-lang/nqp-${PV}:${SLOT}="
RDEPEND="
	${CDEPEND}
"
DEPEND="
	${CDEPEND}
	>=dev-lang/perl-5.10
"

pkg_pretend() {
	if has_version dev-lang/rakudo; then
		ewarn "Rakudo is known to fail compilation/installation with Rakudo"
		ewarn "already being installed. So if it fails, try unmerging dev-lang/rakudo,"
		ewarn "then do a new installation."
		ewarn "(see Bug #584394)"
	fi
}

src_configure() {
	local myargs=(
		"--prefix=/usr"
		"--sysroot=/"
		"--sdkroot=/"
		"--backends=moar"
	)

	perl Configure.pl "${myargs[@]}" || die
}

src_compile() {
	emake NQP_JARS="${NQP}" BLD_NQP_JARS="${NQP}"
}

src_install() {
	emake DESTDIR="${D}" NQP_JARS="${NQP}" BLD_NQP_JARS="${NQP}" install
	# install-dist.raku is required for installing raku modules
	exeinto "/usr/share/perl6/core/tools"
	doexe tools/install-dist.raku
	# Protect important directories from removal
	for repo in site vendor
	do
		keepdir /usr/share/perl6/$repo/bin
		keepdir /usr/share/perl6/$repo/dist
		keepdir /usr/share/perl6/$repo/precomp
		keepdir /usr/share/perl6/$repo/resources
		keepdir /usr/share/perl6/$repo/short
		keepdir /usr/share/perl6/$repo/sources
	done
}

src_test() {
	RAKUDO_PRECOMP_PREFIX=$(mktemp -d) default
}
