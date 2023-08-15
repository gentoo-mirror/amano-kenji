EAPI=8

inherit font

DESCRIPTION="Korean fonts distributed by naver"
HOMEPAGE="https://hangeul.naver.com"
SRC_URI="https://codeberg.org/amano-kenji-gentoo-overlay/nanum/raw/branch/master/NanumBarunGothic-2018-OTF.zip
	https://codeberg.org/amano-kenji-gentoo-overlay/nanum/raw/branch/master/NanumBarunGothic-2018-TTF.zip
	https://codeberg.org/amano-kenji-gentoo-overlay/nanum/raw/branch/master/NanumBarunGothicYetHanGul-2014-OTF.zip
	https://codeberg.org/amano-kenji-gentoo-overlay/nanum/raw/branch/master/NanumBarunGothicYetHanGul-2014-TTF.zip
	https://codeberg.org/amano-kenji-gentoo-overlay/nanum/raw/branch/master/NanumBarunPen-2014-OTF.zip
	https://codeberg.org/amano-kenji-gentoo-overlay/nanum/raw/branch/master/NanumBarunPen-2014-TTF.zip
	https://codeberg.org/amano-kenji-gentoo-overlay/nanum/raw/branch/master/NanumGothic-2016-OTF.zip
	https://codeberg.org/amano-kenji-gentoo-overlay/nanum/raw/branch/master/NanumGothic-2016-TTF.zip
	https://codeberg.org/amano-kenji-gentoo-overlay/nanum/raw/branch/master/NanumGothicCoding-2.5.zip
	https://codeberg.org/amano-kenji-gentoo-overlay/nanum/raw/branch/master/NanumGothicEco-2011-OTF.zip
	https://codeberg.org/amano-kenji-gentoo-overlay/nanum/raw/branch/master/NanumGothicEco-2011-TTF.zip
	https://codeberg.org/amano-kenji-gentoo-overlay/nanum/raw/branch/master/NanumMyeongJo-2014-OTF.zip
	https://codeberg.org/amano-kenji-gentoo-overlay/nanum/raw/branch/master/NanumMyeongJo-2014-TTF.zip
	https://codeberg.org/amano-kenji-gentoo-overlay/nanum/raw/branch/master/NanumMyeongJoEco-2011-OTF.zip
	https://codeberg.org/amano-kenji-gentoo-overlay/nanum/raw/branch/master/NanumMyeongJoEco-2011-TTF.zip
	https://codeberg.org/amano-kenji-gentoo-overlay/nanum/raw/branch/master/NanumMyeongJoYetHanGul-2014-OTF.zip
	https://codeberg.org/amano-kenji-gentoo-overlay/nanum/raw/branch/master/NanumMyeongJoYetHanGul-2014-TTF.zip
	https://codeberg.org/amano-kenji-gentoo-overlay/nanum/raw/branch/master/NanumSonGeulSsi-2010-OTF.zip
	https://codeberg.org/amano-kenji-gentoo-overlay/nanum/raw/branch/master/NanumSonGeulSsi-2010-TTF.zip
	https://codeberg.org/amano-kenji-gentoo-overlay/nanum/raw/branch/master/NanumSquare-2017-OTF.zip
	https://codeberg.org/amano-kenji-gentoo-overlay/nanum/raw/branch/master/NanumSquare-2017-TTF.zip
	https://codeberg.org/amano-kenji-gentoo-overlay/nanum/raw/branch/master/NanumSquareRound-2017-OTF.zip
	https://codeberg.org/amano-kenji-gentoo-overlay/nanum/raw/branch/master/NanumSquareRound-2017-TTF.zip"
LICENSE="OFL-1.1"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
RESTRICT="binchecks strip primaryuri"
BDEPEND="app-arch/unzip"
FONT_SUFFIX="otf ttf"
FONT_CONF=( "${FILESDIR}/45-${PN}.conf" )
S="${WORKDIR}"

src_prepare() {
	rm -r __MACOSX || die
	eapply_user
}
