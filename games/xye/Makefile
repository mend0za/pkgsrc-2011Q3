# $NetBSD: Makefile,v 1.7 2011/01/13 13:37:53 wiz Exp $
#

DISTNAME=	xye-0.9.1
PKGREVISION=	3
CATEGORIES=	games
MASTER_SITE_SOURCEFORGE_NEW= http://downloads.sourceforge.net/project/
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE_NEW:=xye/xye/0.9.1/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://xye.sourceforge.net/
COMMENT=	Kye clone

PKG_DESTDIR_SUPPORT=	user-destdir

WRKSRC=		${WRKDIR}/xye-0.9.1
GNU_CONFIGURE=	yes
CONFIGURE_ARGS+= --with-docdir=${PREFIX}/share/doc
USE_LANGUAGES=	c c++

.include "../../devel/SDL/buildlink3.mk"
.include "../../graphics/SDL_image/buildlink3.mk"
.include "../../devel/SDL_ttf/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
