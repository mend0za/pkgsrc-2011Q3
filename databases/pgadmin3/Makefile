# $NetBSD: Makefile,v 1.21 2011/04/22 13:43:13 obache Exp $

.include "../../databases/postgresql84/Makefile.mirrors"

DISTNAME=	pgadmin3-1.12.1
PKGREVISION=	3
CATEGORIES=	databases
MASTER_SITES=	${PGSQL_MIRRORS:=pgadmin3/release/v${PKGVERSION_NOREV}/src/}

MAINTAINER=	joerg@NetBSD.org
HOMEPAGE=	http://www.pgadmin.org/
COMMENT=	Graphical PostgreSQL client and administration tool

PKG_DESTDIR_SUPPORT=	user-destdir

PGSQL_VERSIONS_ACCEPTED=90 84 83

USE_LANGUAGES=		c c++
USE_TOOLS+=		gmake msgfmt
GNU_CONFIGURE=		yes
CONFIGURE_ARGS+=	--with-wx=${BUILDLINK_PREFIX.wxGTK28}

.include "../../textproc/libxml2/buildlink3.mk"
.include "../../textproc/libxslt/buildlink3.mk"
.include "../../x11/wxGTK28/buildlink3.mk"
.include "../../x11/wxGTK28-contrib/buildlink3.mk"
.include "../../mk/pgsql.buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
