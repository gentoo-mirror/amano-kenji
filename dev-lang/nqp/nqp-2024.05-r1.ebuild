EAPI=8

DESCRIPTION="Not Quite Perl, a Raku bootstrapping compiler"
HOMEPAGE="https://rakudo.org
	https://github.com/Raku/nqp"
SRC_URI="https://github.com/Raku/${PN}/releases/download/${PV}/${P}.tar.gz"
LICENSE="Artistic-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="doc test"
RESTRICT="!test? ( test )"

CDEPEND="
	~dev-lang/moarvm-${PV}
"
RDEPEND="
	${CDEPEND}
"
DEPEND="${CDEPEND}"
BDEPEND="
	${CDEPEND}
	dev-lang/perl
"

pkg_pretend() {
	if has_version dev-lang/rakudo || has_version dev-lang/nqp; then
		ewarn "NQP is known to fail compilation/installation with Rakudo and/or NQP"
		ewarn "already being installed. So if it fails, try uninstalling both"
		ewarn "dev-lang/nqp and dev-lang/rakudo, then do a new installation."
		ewarn "(see Bug #584394)"
	fi
}

src_configure() {
	local myconfargs=(
		"--backend=moar"
		"--prefix=${EPREFIX}/usr"
	)

	perl Configure.pl "${myconfargs[@]}" || die
}

src_compile() {
	emake -j1
}

src_test() {
	emake -j1 test
}

src_install() {
	emake DESTDIR="${ED}" install

	dodoc CREDITS README.pod
	use doc && dodoc -r docs/*
}
