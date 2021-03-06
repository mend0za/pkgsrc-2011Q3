# $NetBSD: options.mk,v 1.4 2011/06/03 13:39:44 fhajny Exp $

PKG_OPTIONS_VAR=	PKG_OPTIONS.libthrift
PKG_SUPPORTED_OPTIONS=	csharp java erlang python perl php ruby

.include "../../mk/bsd.options.mk"

PLIST_VARS+=		csharp erlang java perl php python ruby

.if !empty(PKG_OPTIONS:Mcsharp)
CONFIGURE_ARGS+=	--with-csharp
CONFIGURE_ARGS+=	--enable-gen-csharp
PLIST.csharp=		yes
INSTALLATION_DIRS+=	lib/thrift

post-install:
	${INSTALL_LIB} ${WRKSRC}/lib/csharp/Thrift.dll \
	  ${DESTDIR}${PREFIX}/lib/thrift/Thrift.dll

.include "../../lang/mono/buildlink3.mk"
.else
CONFIGURE_ARGS+=	--without-csharp
.endif

.if !empty(PKG_OPTIONS:Mjava)
CONFIGURE_ARGS+=	--with-java
CONFIGURE_ARGS+=	--enable-gen-java
USE_JAVA=		yes
USE_JAVA2=		6
.include "../../mk/java-vm.mk"
BUILD_DEPENDS+=		apache-ant-[0-9]*:../../devel/apache-ant
PLIST.java=		yes
.else
CONFIGURE_ARGS+=	--without-java
.endif

.if !empty(PKG_OPTIONS:Merlang)
CONFIGURE_ARGS+=	--with-erlang
CONFIGURE_ARGS+=	--enable-gen-erl
PLIST.erlang=		yes

.include "../../lang/erlang/buildlink3.mk"
.else
CONFIGURE_ARGS+=	--without-erlang
.endif

.if !empty(PKG_OPTIONS:Mpython)
CONFIGURE_ARGS+=	--with-py
CONFIGURE_ARGS+=	--enable-gen-py
PLIST.python=		yes
PLIST_SUBST+=		PYSITELIB=${PYSITELIB}

.include "../../lang/python/extension.mk"
CONFIGURE_ENV+=		PY_PREFIX=${BUILDLINK_PREFIX.${PYPACKAGE}}
.else
CONFIGURE_ARGS+=	--without-py
.endif

.if !empty(PKG_OPTIONS:Mperl)
CONFIGURE_ARGS+=	--with-perl
CONFIGURE_ARGS+=	--enable-gen-perl
CONFIGURE_ENV+=		PERL_PREFIX=${PREFIX}
MAKE_ENV+=		INSTALLDIRS=vendor
PERL5_CONFIGURE=	NO
USE_TOOLS+=		perl
PLIST.perl=		yes

#PERL5_PACKLIST=		auto/Thrift/.packlist

DEPENDS+=		p5-Bit-Vector-[0-9]*:../../devel/p5-Bit-Vector
DEPENDS+=		p5-Class-Accessor-[0-9]*:../../devel/p5-Class-Accessor
.include "../../lang/perl5/module.mk"
.else
CONFIGURE_ARGS+=	--without-perl
.endif

.if !empty(PKG_OPTIONS:Mphp)
CONFIGURE_ARGS+=	--with-php
CONFIGURE_ARGS+=	--with-php_extension
CONFIGURE_ARGS+=	--enable-gen-php
PLIST.php=		yes
DIST_SUBDIR=		#

.include "../../lang/php/phpversion.mk"
.include "${PHPPKGSRCDIR}/Makefile.common"
.include "${PHPPKGSRCDIR}/buildlink3.mk"
.else
CONFIGURE_ARGS+=	--without-php
CONFIGURE_ARGS+=	--without-php_extension
.endif

.if !empty(PKG_OPTIONS:Mruby)
CONFIGURE_ARGS+=	--with-ruby
CONFIGURE_ARGS+=	--enable-gen-rb
PLIST.ruby=		yes

.include "../../lang/ruby/buildlink3.mk"
.else
CONFIGURE_ARGS+=	--without-ruby
.endif
