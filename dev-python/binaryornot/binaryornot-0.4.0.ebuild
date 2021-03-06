# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

PYTHON_COMPAT=( python{2_7,3_4,3_5} )

inherit distutils-r1

DESCRIPTION="Ultra-lightweight pure Python package to guess whether a file is binary or text"
HOMEPAGE="https://github.com/audreyr/binaryornot"
SRC_URI="https://github.com/audreyr/${PN}/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64"
IUSE="test"

RDEPEND=">=dev-python/chardet-2.0.0[${PYTHON_USEDEP}]"
DEPEND="test? ( ${RDEPEND}
	dev-python/hypothesis[${PYTHON_USEDEP}] )"

DOCS=( README.rst HISTORY.rst CONTRIBUTING.rst )

python_test() {
	esetup.py test || die
}
