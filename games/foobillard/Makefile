# $NetBSD: Makefile,v 1.21 2011/01/13 13:37:43 wiz Exp $
#

DISTNAME=	foobillard-3.0a
PKGREVISION=	9
CATEGORIES=	games
MASTER_SITES=	http://foobillard.sunsite.dk/dnl/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://foobillard.sunsite.dk/
COMMENT=	Free OpenGL-billard game

PKG_DESTDIR_SUPPORT=	user-destdir

USE_TOOLS+=		gmake
GNU_CONFIGURE=		yes

.include "../../mk/bsd.prefs.mk"

.if ${OPSYS} == "FreeBSD" || ${OPSYS} == "Linux"
CONFIGURE_ARGS+=	--enable-glut
.include "../../graphics/glut/buildlink3.mk"
.else
CONFIGURE_ARGS+=	--enable-nvidia=no
.include "../../devel/SDL/buildlink3.mk"
.endif

.include "../../devel/zlib/buildlink3.mk"
.include "../../graphics/freetype2/buildlink3.mk"
.include "../../graphics/glu/buildlink3.mk"
.include "../../graphics/MesaLib/buildlink3.mk"
.include "../../graphics/png/buildlink3.mk"
.include "../../x11/libXaw/buildlink3.mk"
.include "../../x11/libXi/buildlink3.mk"

.include "../../mk/bsd.pkg.mk"
