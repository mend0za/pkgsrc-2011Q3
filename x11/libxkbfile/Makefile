# $NetBSD: Makefile,v 1.4 2010/01/15 18:30:35 tnn Exp $
#

DISTNAME=		libxkbfile-1.0.6
CATEGORIES=		x11
MASTER_SITES=		${MASTER_SITE_XORG:=lib/}
EXTRACT_SUFX=		.tar.bz2

MAINTAINER=		joerg@NetBSD.org
HOMEPAGE=		http://xorg.freedesktop.org/
COMMENT=		The xkbfile Library from modular X.org

PKG_DESTDIR_SUPPORT=	user-destdir

USE_LIBTOOL=		yes
PKGCONFIG_OVERRIDE+=	xkbfile.pc.in
GNU_CONFIGURE=		yes
USE_TOOLS+=		pkg-config

.include "../../x11/kbproto/buildlink3.mk"
.include "../../x11/libX11/buildlink3.mk"

.include "../../mk/bsd.pkg.mk"
