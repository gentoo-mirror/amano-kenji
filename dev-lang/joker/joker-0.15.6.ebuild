# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit go-module

DESCRIPTION="a small Clojure interpreter and linter written in Go."
HOMEPAGE="https://joker-lang.org/"
EGO_SUM=(
	"github.com/candid82/liner v1.4.0"
	"github.com/candid82/liner v1.4.0/go.mod"
	"github.com/jcburley/go-spew v1.3.0"
	"github.com/jcburley/go-spew v1.3.0/go.mod"
	"github.com/mattn/go-runewidth v0.0.3"
	"github.com/mattn/go-runewidth v0.0.3/go.mod"
	"github.com/pkg/profile v1.2.1"
	"github.com/pkg/profile v1.2.1/go.mod"
	"go.etcd.io/bbolt v1.3.3"
	"go.etcd.io/bbolt v1.3.3/go.mod"
	"golang.org/x/sys v0.0.0-20200302150141-5c8b2ff67527"
	"golang.org/x/sys v0.0.0-20200302150141-5c8b2ff67527/go.mod"
	"gopkg.in/check.v1 v0.0.0-20161208181325-20d25e280405"
	"gopkg.in/check.v1 v0.0.0-20161208181325-20d25e280405/go.mod"
	"gopkg.in/yaml.v2 v2.2.2"
	"gopkg.in/yaml.v2 v2.2.2/go.mod"
)
go-module_set_globals
SRC_URI="https://github.com/candid82/joker/archive/v${PV}.tar.gz -> ${P}.tar.gz
	${EGO_SUM_SRC_URI}"

LICENSE="EPL-1.0"
SLOT="0"
KEYWORDS="~amd64"

DEPEND=">=dev-lang/go-1.14"
RDEPEND=""
DOCS=( DEVELOPER.md LIBRARIES.md README.md docs/misc/lib-loader.md )
HTML_DOCS="docs/*.html docs/*.css docs/*.png docs/*.js"

src_compile() {
	go generate ./... || die
	go vet ./... || die
	go build || die
}

src_install() {
	einstalldocs
	dobin joker
}
