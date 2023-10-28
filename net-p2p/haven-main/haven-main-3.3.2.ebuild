EAPI=8

inherit cmake

DESCRIPTION="Haven protocol(XHV) command line wallet"
HOMEPAGE="https://github.com/haven-protocol-org/haven-main"
SRC_URI="https://codeberg.org/amano-kenji-gentoo-overlay/haven-main/raw/branch/master/${P}.tar.xz"
LICENSE="MIT BSD"
RESTRICT="primaryuri
	!test? ( test )"

SLOT="0"
KEYWORDS="~amd64"
IUSE="lzma unwind +readline ldns xml doc test"

CDEPEND=">=dev-libs/boost-1.67.0:=
	<dev-libs/boost-1.81:=
	>=net-libs/zeromq-3.0.0:=[pgm]
	dev-libs/libsodium:=
	>=net-dns/unbound-1.4.16:=[threads]
	dev-libs/openssl:=
	dev-libs/rapidjson:=
	readline? ( >=sys-libs/readline-6.3.0:= )
	ldns? ( >=net-libs/ldns-1.6.17:= )
	unwind? (
		sys-libs/libunwind:=[lzma?]
	)
	xml? ( >=dev-libs/expat-1.1:= )"
DEPEND="${CDEPEND}"
RDEPEND="${CDEPEND}"
BDEPEND=">=sys-devel/gcc-4.7.3
	>=dev-util/cmake-3.5
	virtual/pkgconfig
	test? ( >=dev-cpp/gtest-1.5 )
	doc? (
		app-doc/doxygen
		media-gfx/graphviz
	)"
DOCS=(README.md docs/ANONYMITY_NETWORKS.md docs/CONTRIBUTING.md docs/LEVIN_PROTOCOL.md docs/README.i18n.md docs/ZMQ.md
docs/PORTABLE_STORAGE.md docs/images)

src_configure() {
	local mycmakeargs=(
		-DBUILD_SHARED_LIBS=OFF
		-DMANUAL_SUBMODULES=OFF # Will this work?
		-DUSE_DEVICE_TREZOR=OFF
		-DBUILD_TESTS=$(usex test)
		-DBUILD_DOCUMENTATION=$(usex doc)
		-DUSE_READLINE=$(usex readline)
	)
	cmake_src_configure
}

src_compile() {
	LRELEASE_PATH="/usr/lib64/qt5/bin/lrelease" cmake_src_compile
}

src_install() {
	cmake_src_install
	#rm -r "${D}/usr/include"
	#rm -r "${D}/usr/$(get_libdir)"

	# OpenRC
	newinitd "${FILESDIR}/havend.openrc" havend
}

pkg_postinst() {
	elog "Create /etc/havend.conf for /etc/init.d/havend"
}
