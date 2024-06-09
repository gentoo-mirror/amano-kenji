EAPI=8

PYTHON_COMPAT=( python3_{8..13} )
DISTUTILS_USE_PEP517=setuptools
inherit distutils-r1

DESCRIPTION="a PEP 561 type stub for the Deprecated package"
HOMEPAGE="https://github.com/python/typeshed"
SRC_URI="https://files.pythonhosted.org/packages/27/10/d9e72aedcd94fba94e511eebb03bcbd2b535e7e1c48e4416367682cd1c4e/${P}.tar.gz"
LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64"
RESTRICT="primaryuri"
