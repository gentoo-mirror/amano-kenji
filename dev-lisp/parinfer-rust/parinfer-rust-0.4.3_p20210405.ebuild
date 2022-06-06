# Copyright 2017-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

CRATES="
aho-corasick-0.7.15
ansi_term-0.11.0
anyhow-1.0.38
atty-0.2.14
base-x-0.2.8
bindgen-0.56.0
bitflags-1.2.1
bumpalo-3.6.1
cexpr-0.4.0
cfg-if-1.0.0
clang-sys-1.1.1
clap-2.33.3
ctor-0.1.19
darling-0.10.2
darling_core-0.10.2
darling_macro-0.10.2
discard-1.0.4
emacs-0.16.2
emacs-macros-0.15.1
emacs_module-0.16.2
env_logger-0.8.3
fnv-1.0.7
getopts-0.2.21
glob-0.3.0
hermit-abi-0.1.18
humantime-2.1.0
ident_case-1.0.1
itoa-0.4.7
lazy_static-1.4.0
lazycell-1.3.0
libc-0.2.87
libloading-0.7.0
log-0.4.14
memchr-2.3.4
nom-5.1.2
once_cell-1.7.2
peeking_take_while-0.1.2
proc-macro2-1.0.24
quote-1.0.9
regex-1.4.3
regex-syntax-0.6.22
rustc-hash-1.1.0
rustc_version-0.2.3
ryu-1.0.5
semver-0.9.0
semver-parser-0.7.0
serde-1.0.123
serde_derive-1.0.123
serde_json-1.0.64
sha1-0.6.0
shlex-0.1.1
stdweb-0.4.20
stdweb-derive-0.5.3
stdweb-internal-macros-0.2.9
stdweb-internal-runtime-0.1.5
strsim-0.8.0
strsim-0.9.3
syn-1.0.60
termcolor-1.1.2
textwrap-0.11.0
thiserror-1.0.24
thiserror-impl-1.0.24
thread_local-1.1.3
unicode-segmentation-1.7.1
unicode-width-0.1.8
unicode-xid-0.2.1
vec_map-0.8.2
version_check-0.9.2
wasm-bindgen-0.2.71
wasm-bindgen-backend-0.2.71
wasm-bindgen-macro-0.2.71
wasm-bindgen-macro-support-0.2.71
wasm-bindgen-shared-0.2.71
which-3.1.1
winapi-0.3.9
winapi-i686-pc-windows-gnu-0.4.0
winapi-util-0.1.5
winapi-x86_64-pc-windows-gnu-0.4.0
"

inherit cargo llvm

DESCRIPTION="Infer parentheses for Clojure, Lisp and Scheme."
HOMEPAGE="https://github.com/eraserhd/parinfer-rust"
COMMIT="9e41222b7bc8930e24c411c1b4bc48715975ed17"
SRC_URI="https://github.com/eraserhd/parinfer-rust/archive/${COMMIT}.tar.gz -> ${P}.tar.gz
	$(cargo_crate_uris ${CRATES})"
RESTRICT="primaryuri"
LICENSE="Apache-2.0 Boost-1.0 MIT BSD ISC Unlicense"
SLOT="0"
KEYWORDS="~amd64"
IUSE="test"
CDEPEND="sys-devel/clang:="
DEPEND="${CDEPEND}"
RDEPEND="${CDEPEND}"
DOCS=( "README.adoc" "CHANGELOG.adoc" "doc/parinfer.txt" )
S="${WORKDIR}/${PN}-${COMMIT}"

src_compile() {
	export LIBCLANG_PATH="$(get_llvm_prefix)/$(get_libdir)"
	cargo_src_compile
}

src_install() {
	cargo_src_install
	dolib.so target/release/libparinfer_rust.so
	einstalldocs

	insinto "/usr/share/${PN}"
	doins -r plugin rc/parinfer.kak
}

pkg_postinst() {
	elog "For vim support, execute"
	elog "mkdir -p ~/.vim/pack/*/start"
	elog "ln -s /usr/share/${PN} ~/.vim/pack/*/start"
	elog "And, put the following line in ~/.vimrc"
	elog "let g:parinfer_dylib_path = \"/usr/$(get_libdir)/libparinfer_rust.so\""
	elog
	elog "For neovim support, execute"
	elog "mkdir -p ~/.local/share/nvim/site/pack/*/start"
	elog "ln -s /usr/share/${PN} ~/.local/share/nvim/site/pack/*/start"
	elog "And, put the following line in ~/.config/nvim/init.vim"
	elog "let g:parinfer_dylib_path = \"/usr/$(get_libdir)/libparinfer_rust.so\""
	elog
	elog "Note that * is any possible directory name."
	elog
	elog "For kakoune support, execute"
	elog "mkdir -p ~/.config/kak/autoload"
	elog "ln -s /usr/share/${PN}/*.kak ~/.config/kak/autoload"
	elog "And, consult /usr/share/doc/${P}/README.adoc for further instructions"
	elog
	elog "For emacs support, visit https://github.com/justinbarclay/parinfer-rust-mode"
}
