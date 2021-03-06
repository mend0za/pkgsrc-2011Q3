# $NetBSD: Makefile,v 1.66 2011/04/22 14:40:44 obache Exp $

DISTNAME=	mtr-0.80
PKGREVISION=	4
CATEGORIES=	net
MASTER_SITES=	ftp://ftp.bitwizard.nl/mtr/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://www.bitwizard.nl/mtr/
COMMENT=	Traceroute and ping in a single graphical network diagnostic tool
LICENSE=	gnu-gpl-v2

PKG_INSTALLATION_TYPES=	overwrite pkgviews
PKG_DESTDIR_SUPPORT=	user-destdir

GNU_CONFIGURE=		YES
USE_TOOLS+=		gmake
INSTALLATION_DIRS=	${PKGMANDIR}/man8 sbin share/doc/mtr

.include "options.mk"

# mtr uses libtermcap by default, but needs wattr_{on,off} from (n)curses,
# so we rewrite -ltermcap to -lncurses (which will be auto-mangled into
# -lcurses on the appropriate platforms).
BUILDLINK_TRANSFORM+=	l:termcap:ncurses

SPECIAL_PERMS=	sbin/mtr ${SETUID_ROOT_PERMS}

# Remove hard-coded compiler option that GCC 3.x doesn't support.
.include "../../mk/compiler.mk"
.if !empty(CC_VERSION:Mgcc-3.*)
BUILDLINK_TRANSFORM+=	rm:-Wno-pointer-sign
.endif

.if !empty(MACHINE_PLATFORM:MDarwin-??.*-*)
LIBS+=	-lresolv
.endif

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/mtr ${DESTDIR}${PREFIX}/sbin
	${INSTALL_DATA} ${WRKSRC}/mtr.8 ${DESTDIR}${PREFIX}/${PKGMANDIR}/man8
	${INSTALL_DATA} ${WRKSRC}/SECURITY ${DESTDIR}${PREFIX}/share/doc/mtr

.include "../../devel/ncurses/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
