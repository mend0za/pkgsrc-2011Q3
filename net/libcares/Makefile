# $NetBSD: Makefile,v 1.11 2010/07/25 13:09:42 obache Exp $
#
# Please do not update or modify this package as it has been imported only
# as a dependecy for chat/unrealircd. This package should only be updated
# when chat/unrealircd requires it.
#

DISTNAME=	c-ares-1.6.0
PKGNAME=	libcares-1.6.0
CATEGORIES=	net
MASTER_SITES=	http://c-ares.haxx.se/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://c-ares.haxx.se/
COMMENT=	Asynchronous resolver library
LICENSE=	mit

CONFLICTS+=	libares-[0-9]*

PKG_DESTDIR_SUPPORT=	user-destdir

MAKE_JOBS_SAFE=	no

GNU_CONFIGURE=	YES
USE_LIBTOOL=	YES

PKGCONFIG_OVERRIDE+=	libcares.pc.in

.include "../../mk/bsd.pkg.mk"
