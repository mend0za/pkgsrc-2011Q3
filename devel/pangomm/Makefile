# $NetBSD: Makefile,v 1.16 2011/05/12 11:15:43 adam Exp $

DISTNAME=	pangomm-2.28.2
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_GNOME:=sources/pangomm/${PKGVERSION_NOREV:R}/}
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	adam@NetBSD.org
HOMEPAGE=	http://www.gtkmm.org/
COMMENT=	C++ bindings for pangomm
LICENSE=	gnu-lgpl-v2.1

PKG_DESTDIR_SUPPORT=	user-destdir

CONFLICTS+=		gtkmm<=2.13.5

USE_LANGUAGES=		c c++
USE_LIBTOOL=		yes
USE_PKGLOCALEDIR=	yes
USE_TOOLS+=		gmake pkg-config perl:run
GNU_CONFIGURE=		yes

PKGCONFIG_OVERRIDE+=	pango/pangomm.pc.in

BUILDLINK_API_DEPENDS.pango+=	pango>=1.26.0

.include "../../devel/glibmm/buildlink3.mk"
.include "../../devel/pango/buildlink3.mk"
.include "../../graphics/cairomm/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
