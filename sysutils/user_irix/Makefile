# $NetBSD: Makefile,v 1.1.1.1 2011/05/07 15:43:13 cheusov Exp $
#

DISTNAME=		user-20110201
CATEGORIES=		sysutils
MASTER_SITES=		# empty
DISTFILES=		# empty

MAINTAINER=		vle@gmx.net
COMMENT=		Limited NetBSD-compatible useradd/groupadd commands
LICENSE=		2-clause-bsd

PKG_DESTDIR_SUPPORT=	user-destdir

ONLY_FOR_PLATFORM=	IRIX-*-*

NO_CONFIGURE=		yes
NO_BUILD=		yes

INSTALLATION_DIRS=	sbin

do-install:
	${INSTALL_SCRIPT} ${FILESDIR}/useradd.sh ${DESTDIR}${PREFIX}/sbin/useradd
	${INSTALL_SCRIPT} ${FILESDIR}/userdel.sh ${DESTDIR}${PREFIX}/sbin/userdel
	${INSTALL_SCRIPT} ${FILESDIR}/groupadd.sh ${DESTDIR}${PREFIX}/sbin/groupadd
	${INSTALL_SCRIPT} ${FILESDIR}/groupdel.sh ${DESTDIR}${PREFIX}/sbin/groupdel

.include "../../mk/bsd.pkg.mk"
