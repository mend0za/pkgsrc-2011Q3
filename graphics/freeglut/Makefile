# $NetBSD: Makefile,v 1.12 2008/06/12 02:14:31 joerg Exp $
#

DISTNAME=	freeglut-2.2.0
PKGREVISION=	3
CATEGORIES=	graphics
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=freeglut/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://freeglut.sourceforge.net/
COMMENT=	Alternative to the OpenGL Utility Toolkit (GLUT) library

PKG_INSTALLATION_TYPES=	overwrite pkgviews
PKG_DESTDIR_SUPPORT=	user-destdir

USE_LIBTOOL=	yes
GNU_CONFIGURE=	yes
CONFIGURE_ARGS+=	--disable-replace-glut

.include "../../graphics/MesaLib/buildlink3.mk"
.include "../../graphics/glu/buildlink3.mk"
.include "../../x11/libXxf86vm/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
