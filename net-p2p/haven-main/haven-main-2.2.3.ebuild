# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit multilib cmake

DESCRIPTION="Haven protocol(XHV) command line wallet"
HOMEPAGE="https://github.com/haven-protocol-org/haven-main"
BLOCKCHAIN_EXPLORER="4dc9793acf4c2508b29069fa4ece2b312d72c928"
BLOCKCHAIN_EXPLORER_P="haven-blockchain-explorer-${BLOCKCHAIN_EXPLORER}"
RANDOMX="7567cef4c6192fb5356bbdd7db802be77be0439b"
RANDOMX_P="randomx-${RANDOMX}"
MINIUPNP="4c700e09526a7d546394e85628c57e9490feefa0"
MINIUPNP_P="miniupnp-${MINIUPNP}"
SRC_URI="https://github.com/haven-protocol-org/haven-main/archive/v${PV}.tar.gz -> ${P}.tar.gz
	https://github.com/haven-protocol-org/haven-blockchain-explorer/archive/${BLOCKCHAIN_EXPLORER}.tar.gz -> ${BLOCKCHAIN_EXPLORER_P}.tar.gz
	https://github.com/tevador/RandomX/archive/${RANDOMX}.tar.gz -> ${RANDOMX_P}.tar.gz
	https://github.com/monero-project/miniupnp/archive/${MINIUPNP}.tar.gz -> ${MINIUPNP_P}.tar.gz"
LICENSE="MIT BSD"
RESTRICT="primaryuri"

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
	xml? ( >=dev-libs/expat-1.1:= )
	net-libs/miniupnpc"
DEPEND="${CDEPEND}
	test? ( dev-cpp/gtest )
	doc? (
		app-doc/doxygen
		media-gfx/graphviz
	)"
RDEPEND="${CDEPEND}"
BDEPEND=">=sys-devel/gcc-4.7.3
	>=dev-util/cmake-3.5
	virtual/pkgconfig"
DOCS="README.md ANONYMITY_NETWORKS.md LEVIN_PROTOCOL.md RPC_API.html"

src_unpack() {
	default
	rmdir "${S}/haven-blockchain-explorer" || die
	mv "${WORKDIR}/haven-blockchain-explorer-${BLOCKCHAIN_EXPLORER}" "${S}/haven-blockchain-explorer" || die
	rmdir "${S}"/external/{randomx,miniupnp} || die
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

src_install() {
	cmake_src_install
	rm -r "${D}/usr/include"
	rm -r "${D}/usr/$(get_libdir)"
	mv "${D}/usr/bin/monero-gen-ssl-cert" "${D}/usr/bin/haven-gen-ssl-cert"

	# OpenRC
	newinitd "${FILESDIR}/havend.openrc" havend
}

pkg_postinst() {
	elog "Create /etc/havend.conf for /etc/init.d/havend"
}
