# $NetBSD: Makefile,v 1.33 2010/07/09 12:03:55 joerg Exp $
#

DISTNAME=	libarchive-2.8.4
CATEGORIES=	archivers
MASTER_SITES=	# empty
DISTFILES=	# empty

MAINTAINER=	joerg@NetBSD.org
HOMEPAGE=	http://code.google.com/p/libarchive/
COMMENT=	Library to read/create different archive formats

PKG_DESTDIR_SUPPORT=	user-destdir

GNU_CONFIGURE=	yes
USE_LIBTOOL=	yes

CONFIGURE_ARGS+=	--disable-bsdtar --without-expat --without-xml2 \
			--disable-bsdcpio

do-extract:
	${CP} -r ${FILESDIR} ${WRKSRC}

.include "../../archivers/bzip2/buildlink3.mk"
.include "../../devel/zlib/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
