# $NetBSD: Makefile,v 1.21 2011/04/22 13:45:16 obache Exp $
#

PKG_DESTDIR_SUPPORT=	user-destdir

.include "../../x11/xosd/Makefile.common"

PKGNAME=		${DISTNAME:S/xosd/xmms-osd/}
PKGREVISION=		5

COMMENT=		XMMS plugin that shows current status on your desktop
CONFLICTS=		xosd<=2.2.0

CONFIGURE_ENV+=		XOSD_XMMS_PLUGIN=YES
CONFIGURE_ARGS+=	--enable-new-plugin

BUILD_DIRS=		src/xmms_plugin
INSTALL_DIRS=		src/xmms_plugin

.include "../../audio/xmms/buildlink3.mk"
.include "../../graphics/gdk-pixbuf/buildlink3.mk"
.include "../../x11/gtk/buildlink3.mk"
.include "../../x11/libXi/buildlink3.mk"
.include "../../x11/xosd/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
