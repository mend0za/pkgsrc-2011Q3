# $NetBSD: Makefile,v 1.13 2011/01/18 10:27:30 wiz Exp $

DISTNAME=		gofish-1.2
CATEGORIES=		net
MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=gofish/}

MAINTAINER=		esg@sdf.lonestar.org
HOMEPAGE=		http://gofish.sourceforge.net/
COMMENT=		Gopher server
LICENSE=		gnu-gpl-v2

PKG_DESTDIR_SUPPORT=	user-destdir

WRKSRC=			${WRKDIR}/gofish
USE_PKGLOCALEDIR=	yes
GNU_CONFIGURE=		yes

CONFIGURE_ARGS+=	--with-gopheruser=${GOPHER_USER:Q}
CONFIGURE_ARGS+=	--sysconfdir=${PKG_SYSCONFDIR:Q}
CONFIGURE_ARGS+=	--localstatedir=${VARBASE:Q}

EGDIR=			${PREFIX}/share/examples/gofish
RUNTIMEDIR=		${VARBASE}/gopher

GOPHER_USER?=		gopher
GOPHER_GROUP?=		gopher
PKG_GROUPS=		${GOPHER_GROUP}
PKG_USERS=		${GOPHER_USER}:${GOPHER_GROUP}
PKG_GROUPS_VARS+=	GOPHER_GROUP
PKG_USERS_VARS+=	GOPHER_USER

RCD_SCRIPTS=		gopherd

OWN_DIRS_PERMS=		${RUNTIMEDIR} ${GOPHER_USER} ${GOPHER_GROUP} 0750

.for FILE in gofish.conf gofish-www.conf
CONF_FILES+=		${EGDIR}/${FILE} ${PKG_SYSCONFDIR}/${FILE}
.endfor

FILES_SUBST+=		RUNTIMEDIR=${RUNTIMEDIR:Q}
FILES_SUBST+=		PKG_USERS=${PKG_USERS:Q}

SUBST_CLASSES+=		user
SUBST_MESSAGE.user=	Fixing name of gopher user in files.
SUBST_FILES.user=	gofish.conf
SUBST_SED.user=		-e "s/;user = gopher/user = ${GOPHER_USER}/g"

INSTALLATION_DIRS=	share/examples/gofish share/doc/gofish

post-install:
	${INSTALL_DATA} ${WRKSRC}/gofish.conf ${DESTDIR}${EGDIR}
	${INSTALL_DATA} ${WRKSRC}/gofish-www.conf ${DESTDIR}${EGDIR}
	${INSTALL_DATA} ${WRKSRC}/Configure_GoFish ${DESTDIR}${PREFIX}/share/doc/gofish

.include "../../mk/bsd.pkg.mk"
