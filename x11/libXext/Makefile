# $NetBSD: Makefile,v 1.12 2011/07/19 14:00:04 joerg Exp $
#

DISTNAME=		libXext-1.1.1
CATEGORIES=		x11 devel
MASTER_SITES=		${MASTER_SITE_XORG:=lib/}
EXTRACT_SUFX=		.tar.bz2

MAINTAINER=		joerg@NetBSD.org
HOMEPAGE=		http://xorg.freedesktop.org/
COMMENT=		X Extension library

PKG_INSTALLATION_TYPES=	overwrite pkgviews
PKG_DESTDIR_SUPPORT=	user-destdir

USE_LIBTOOL=		yes
GNU_CONFIGURE=		yes
USE_TOOLS+=		pkg-config

PKGCONFIG_OVERRIDE+=	xext.pc.in

.include "../../mk/bsd.prefs.mk"

.if ${OPSYS} == "NetBSD"
CONFIGURE_ARGS+=	--disable-malloc0returnsnull
.endif

.include "../../mk/compiler.mk"

.if !empty(PKGSRC_COMPILER:Mclang)
BUILD_DEPENDS+=		ucpp-[0-9]*:../../devel/ucpp
CONFIGURE_ENV+=		ac_cv_path_RAWCPP="${PREFIX}/bin/ucpp -t -c90 -Uunix"
.elif empty(PKGSRC_COMPILER:Mgcc)
CONFIGURE_ENV+=		ac_cv_path_RAWCPP="cc -E -Uunix -"
.endif

BUILDLINK_API_DEPENDS.libX11+=	libX11>=1.2
.include "../../x11/libX11/buildlink3.mk"
BUILDLINK_API_DEPENDS.xextproto+=	xextproto>=7.0.5
.include "../../x11/xextproto/buildlink3.mk"
.include "../../x11/xproto/buildlink3.mk"

.include "../../mk/bsd.pkg.mk"
