# $NetBSD: Makefile,v 1.21 2011/09/18 09:01:31 adam Exp $

.include "../../x11/qt4-libs/Makefile.common"

PKGNAME=	qt4-sqlite3-${QTVERSION}
PKGREVISION=	1
COMMENT=	QT sqlite3 driver

CONFIGURE_ARGS+=	-I${QTDIR}/include
CONFIGURE_ARGS+=	-L${QTDIR}/lib
CONFIGURE_ARGS+=	-system-sqlite

BUILD_QT4=		yes
USE_TOOLS+=		pkg-config

do-build:
	cd ${WRKSRC}/src/tools/bootstrap && env ${MAKE_ENV} ${GMAKE}
	cd ${WRKSRC}/src/tools/moc && env ${MAKE_ENV} ${GMAKE}
	cd ${WRKSRC}/src/plugins/sqldrivers/sqlite && env ${MAKE_ENV} ${GMAKE}

SQLDRVDIR=	${QTPREFIX}/plugins/sqldrivers
INSTALLATION_DIRS=	${SQLDRVDIR}

do-install:
	${LIBTOOL} --mode=install ${INSTALL_LIB} ${WRKSRC}/plugins/sqldrivers/libqsqlite.la \
		${DESTDIR}${SQLDRVDIR}

.include "../../x11/qt4-libs/buildlink3.mk"
.include "../../x11/qt4-tools/buildlink3.mk"
.include "../../databases/sqlite3/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
