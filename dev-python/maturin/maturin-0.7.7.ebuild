# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

CRATES="
base64-0.11.0
cargo_metadata-0.9.1
digest-0.8.1
failure-0.1.6
keyring-0.7.0
reqwest-0.10.0
rpassword-4.0.1
serde_json-1.0.42
sha2-0.8.0
structopt-0.3.5
target_info-0.1.0
toml-0.5.5
zip-0.5.2
serde-1.0.103
human-panic-1.0.1
regex-1.2.1
goblin-0.1.1
pretty_env_logger-0.3.0
platforms-0.2.1
shlex-0.1.1
cbindgen-0.12.0
walkdir-2.2.8
flate2-1.0.12
tar-0.4.26
platform-info-0.0.1
bytesize-1.0.0"

TEST_CRATES="indoc-0.3.3"

DESCRIPTION="Builds wheels from a rust crate for python 3.5+"
HOMEPAGE="https://github.com/PyO3/maturin"
SRC_URI="https://github.com/PyO3/maturin/archive/v${PV}.tar.gz -> ${P}.tar.gz
	$(cargo_crate_uris ${CRATES})
	test? ( $(cargo_crate_uris ${TEST_CRATES}) )"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64"
IUSE="test"

RDEPEND=""
DEPEND=""
DOCS=( Changelog.md Readme.md )
