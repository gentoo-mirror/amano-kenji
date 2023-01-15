EAPI=7

inherit cmake

DESCRIPTION="Haven protocol(XHV) command line wallet"
HOMEPAGE="https://github.com/haven-protocol-org/haven-main"
RANDOMX="f9ae3f235183c452962edd2a15384bdc67f7a11e"
RANDOMX_P="randomx-${RANDOMX}"
MINIUPNP="4c700e09526a7d546394e85628c57e9490feefa0"
MINIUPNP_P="miniupnp-${MINIUPNP}"
SRC_URI="https://github.com/haven-protocol-org/haven-main/archive/v${PV}.tar.gz -> ${P}.tar.gz
	https://github.com/tevador/RandomX/archive/${RANDOMX}.tar.gz -> ${RANDOMX_P}.tar.gz
	https://github.com/monero-project/miniupnp/archive/${MINIUPNP}.tar.gz -> ${MINIUPNP_P}.tar.gz"
LICENSE="MIT BSD"
RESTRICT="primaryuri
	!test? ( test )"

SLOT="0"
KEYWORDS="~amd64"
IUSE="lzma unwind +readline ldns xml doc test"

CDEPEND=">=dev-libs/boost-1.67.0:=
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
	test? ( dev-cpp/gtest )
	doc? (
		app-doc/doxygen
		media-gfx/graphviz
	)"
DOCS="README.md ANONYMITY_NETWORKS.md LEVIN_PROTOCOL.md RPC_API.html"

src_unpack() {
	default
	# rmdir "${S}/haven-blockchain-explorer" || die
	# mv "${WORKDIR}/haven-blockchain-explorer-${BLOCKCHAIN_EXPLORER}" "${S}/haven-blockchain-explorer" || die
	rmdir "${S}"/external/{randomx,miniupnp} || die
	# rm -r "${S}/translations" || die
	mv "${WORKDIR}/RandomX-${RANDOMX}" "${S}/external/randomx" || die
	mv "${WORKDIR}/miniupnp-${MINIUPNP}" "${S}/external/miniupnp" || die
}

src_configure() {
	local mycmakeargs=(
		-DBUILD_SHARED_LIBS=OFF
		-DMANUAL_SUBMODULES=ON
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
