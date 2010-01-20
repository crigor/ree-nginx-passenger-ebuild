# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

inherit ruby gems
USE_RUBY="ruby18 ruby19"

DESCRIPTION="Passenger gem for use with nginx or apache"
HOMEPAGE="http://www.modrails.com"

LICENSE="MIT"
KEYWORDS="amd64 ia64 ppc ppc64 sparc x86 ~x86-fbsd"

IUSE="nginx"
DEPEND=">=dev-lang/ruby-1.8.7"

RDEPEND="${DEPEND}
	>=dev-ruby/rubygems-1.3.4"

src_install() {
	gems_src_install
	use nginx &&
	    pushd "${D}/usr/lib64/ruby/gems/1.8/gems/passenger-2.2.9" &&
	    patch -p0 < "${FILESDIR}/passenger-2.2.9-headers.patch" &&
	    pushd "${D}usr/lib64/ruby/gems/1.8/gems/passenger-2.2.9/ext/nginx" &&
	    OPTIMIZE="yes" rake nginx &&
	    popd
}
