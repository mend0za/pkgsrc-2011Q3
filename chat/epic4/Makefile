# $NetBSD: Makefile,v 1.33 2010/12/29 02:02:02 dholland Exp $
#

DISTNAME=	epic4-2.2
PKGREVISION=	2
CATEGORIES=	chat
MASTER_SITES=	ftp://ftp.epicsol.org/pub/epic/EPIC4-PRODUCTION/ \
		ftp://ftp.freenet.de/pub/ftp.prbh.org/pub/epic/EPIC4-PRODUCTION/ \
		http://ftp.freenet.de/pub/ftp.prbh.org/pub/epic/EPIC4-PRODUCTION/ \
		ftp://totem.fix.no/pub/mirrors/epic/EPIC4-PRODUCTION/ \
		ftp://ftp.eu.uu.net/pub/unix/irc/epic/EPIC4-PRODUCTION/ \
		ftp://ftp.parodius.com/pub/epic/EPIC4-PRODUCTION/ \
		ftp://ftp.archive.de.uu.net/pub/unix/irc/epic/EPIC4-PRODUCTION/ \
		ftp://ftp.nl.uu.net/pub/unix/irc/epic/EPIC4-PRODUCTION/
EXTRACT_SUFX=	.tar.bz2

PKG_DESTDIR_SUPPORT=	user-destdir

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://www.epicsol.org/
COMMENT=	The (E)nhanced (P)rogrammable (I)RC-II (C)lient

GNU_CONFIGURE=	YES

INSTALL_MAKE_FLAGS+=	IP=${DESTDIR}

CFLAGS.OSF1+=	-D_SOCKADDR_LEN

.include "../../security/openssl/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
