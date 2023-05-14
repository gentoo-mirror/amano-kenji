EAPI=8

inherit xdg

KEYWORDS="~amd64"

SRC_URI="https://github.com/atlas-engineer/nyxt/releases/download/${PV}/nyxt--source-with-submodules.tar.xz -> ${P}.tar.xz"
DESCRIPTION="Nyxt - the internet on your terms."
HOMEPAGE="https://nyxt.atlas.engineer/"
LICENSE="BSD CC-BY-SA-3.0"
SLOT="0"
IUSE="X spell"

DEPEND="net-libs/webkit-gtk
	dev-libs/gobject-introspection
	net-libs/glib-networking
	gnome-base/gsettings-desktop-schemas
	sys-libs/libfixposix
	X? ( x11-misc/xclip )
	spell? ( app-text/enchant )"
BDEPEND=">=dev-lisp/sbcl-2.0.0"
RESTRICT="primaryuri strip"
S="${WORKDIR}"
DOCS="README.org documents/CHANGELOG.org documents/EXTENSIONS.org"

src_compile(){
	emake all || die emake failed
}

src_install() {
	emake DESTDIR="${D}" PREFIX=/usr install
	einstalldocs
}
