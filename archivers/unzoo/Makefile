# $NetBSD: Makefile,v 1.12 2010/02/26 10:28:30 wiz Exp $
#

DISTNAME=	unzoo.c
PKGNAME=	unzoo-4.4
CATEGORIES=	archivers
MASTER_SITES=	# no dist site available
EXTRACT_SUFX=	# empty

MAINTAINER=	pkgsrc-users@NetBSD.org
COMMENT=	Extract zoo archives

PKG_INSTALLATION_TYPES=	overwrite pkgviews
PKG_DESTDIR_SUPPORT=	user-destdir

WRKSRC=		${WRKDIR}
NO_CONFIGURE=	YES

INSTALLATION_DIRS=	bin

do-extract:
	cd ${DISTDIR} && ${CP} ${DISTFILES} ${WRKSRC}

do-build:
	cd ${WRKSRC} &&	${CC} ${CFLAGS} -DSYS_IS_UNIX -DSYS_HAS_MKDIR -o unzoo unzoo.c

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/unzoo ${DESTDIR}${PREFIX}/bin

.include "../../mk/bsd.pkg.mk"
