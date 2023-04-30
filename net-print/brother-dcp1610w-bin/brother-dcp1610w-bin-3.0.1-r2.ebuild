EAPI=8

inherit rpm linux-info

DESCRIPTION="Brother printer driver for DCP-1610W"
HOMEPAGE="http://support.brother.com"
SRC_URI="http://download.brother.com/welcome/dlf101534/dcp1610wcupswrapper-3.0.1-1.i386.rpm
	http://download.brother.com/welcome/dlf101535/dcp1610wlpr-3.0.1-1.i386.rpm"

LICENSE="GPL-2"

SLOT="0"

KEYWORDS="amd64 x86"

RESTRICT="mirror strip"

DEPEND="net-print/cups"
RDEPEND="${DEPEND}"

S=${WORKDIR}

pkg_setup() {
	CONFIG_CHECK=""
	if use amd64; then
		CONFIG_CHECK="${CONFIG_CHECK} ~IA32_EMULATION"
	fi

	linux-info_pkg_setup
}

src_unpack() {
	rpm_unpack ${A}
}

src_install() {
	MODEL="dcp1610w"

	mkdir -p "${D}/"usr/libexec/cups/filter || die
	mkdir -p "${D}/"usr/share/cups/model/Brother || die

	cp -r opt "${D}" || die
	cp -r var "${D}" || die

	dosym ../../../../opt/brother/Printers/${MODEL^^}/cupswrapper/brother_lpdwrapper_${MODEL^^} \
		/usr/libexec/cups/filter/brother_lpdwrapper_${MODEL^^} || die

	dosym ../../../../../opt/brother/Printers/${MODEL^^}/cupswrapper/brother-${MODEL^^}-cups-en.ppd \
		/usr/share/cups/model/Brother/brother_${MODEL}_printer_en.ppd || die
}
