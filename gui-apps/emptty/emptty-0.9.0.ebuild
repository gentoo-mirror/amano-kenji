EAPI=8

inherit go-module pam systemd

DESCRIPTION="Dead simple CLI Display Manager on TTY"
HOMEPAGE="https://github.com/tvrzna/emptty"
SRC_URI="https://github.com/tvrzna/emptty/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz
	mirror://amano-kenji/${PN}-0.8.1-deps.tar.xz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
RESTRICT="primaryuri"
DEPEND="sys-libs/pam
	x11-libs/libX11"
RDEPEND="${DEPEND}"
BDEPEND=">=dev-lang/go-1.14"
DOCS="README.md SAMPLES.md res/conf"

src_compile() {
	go build || die
}

src_install() {
	dobin emptty
	einstalldocs
	doman res/emptty.1

	newpamd res/pam emptty
	systemd_newunit res/systemd-service emptty.service
	exeinto /etc/init.d
	newexe res/openrc-service emptty
}
