# $NetBSD: Makefile,v 1.10 2011/04/22 13:42:48 obache Exp $

VERSION=	3.2.0
DISTNAME=	libotr-${VERSION}
PKGREVISION=	1
CATEGORIES=	chat security
MASTER_SITES=	http://www.cypherpunks.ca/otr/

MAINTAINER=	nathanw@NetBSD.org
# also gdt@NetBSD.org
HOMEPAGE=	http://www.cypherpunks.ca/otr/
COMMENT=	Library for Off-The-Record encrypted messaging

PKG_DESTDIR_SUPPORT=	user-destdir

GNU_CONFIGURE=	yes
CONFIGURE_ARGS+=	--with-pic

USE_LIBTOOL=	yes

.include "../../devel/gettext-lib/buildlink3.mk"
.include "../../security/libgcrypt/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
