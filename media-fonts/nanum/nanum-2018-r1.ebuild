# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI="7"

inherit font

DESCRIPTION="Korean fonts distributed by naver"
HOMEPAGE="http://hangeul.naver.com"
SRC_URI="mirror://amano-kenji/NanumBarunGothic-2018-OTF.zip
	mirror://amano-kenji/NanumBarunGothic-2018-TTF.zip
	mirror://amano-kenji/NanumBarunGothicYetHanGul-2014-OTF.zip
	mirror://amano-kenji/NanumBarunGothicYetHanGul-2014-TTF.zip
	mirror://amano-kenji/NanumBarunPen-2014-OTF.zip
	mirror://amano-kenji/NanumBarunPen-2014-TTF.zip
	mirror://amano-kenji/NanumGothic-2016-OTF.zip
	mirror://amano-kenji/NanumGothic-2016-TTF.zip
	mirror://amano-kenji/NanumGothicCoding-2.5.zip
	mirror://amano-kenji/NanumGothicEco-2011-OTF.zip
	mirror://amano-kenji/NanumGothicEco-2011-TTF.zip
	mirror://amano-kenji/NanumMyeongJo-2014-OTF.zip
	mirror://amano-kenji/NanumMyeongJo-2014-TTF.zip
	mirror://amano-kenji/NanumMyeongJoEco-2011-OTF.zip
	mirror://amano-kenji/NanumMyeongJoEco-2011-TTF.zip
	mirror://amano-kenji/NanumMyeongJoYetHanGul-2014-OTF.zip
	mirror://amano-kenji/NanumMyeongJoYetHanGul-2014-TTF.zip
	mirror://amano-kenji/NanumSonGeulSsi-2010-OTF.zip
	mirror://amano-kenji/NanumSonGeulSsi-2010-TTF.zip
	mirror://amano-kenji/NanumSquare-2017-OTF.zip
	mirror://amano-kenji/NanumSquare-2017-TTF.zip
	mirror://amano-kenji/NanumSquareRound-2017-OTF.zip
	mirror://amano-kenji/NanumSquareRound-2017-TTF.zip"
LICENSE="OFL-1.1"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
RESTRICT="binchecks strip primaryuri"

DEPEND=""
RDEPEND=""

FONT_SUFFIX="otf ttf"
FONT_CONF=( "${FILESDIR}/45-${PN}.conf" )
S="${WORKDIR}"

src_prepare() {
	rm -r __MACOSX || die
	eapply_user
}
