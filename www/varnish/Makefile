# $NetBSD: Makefile,v 1.11 2011/08/31 21:12:17 shattered Exp $
#

DISTNAME=	varnish-2.1.5
PKGREVISION=	2
CATEGORIES=	www
MASTER_SITES=	http://repo.varnish-cache.org/source/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://varnish-cache.org/
COMMENT=	High-performace HTTP accelerator
LICENSE=	modified-bsd

PKG_DESTDIR_SUPPORT=	user-destdir

GNU_CONFIGURE=	yes
USE_LIBTOOL=	yes
USE_TOOLS+=	autoconf pkg-config gmake
BUILD_DEFS+=	VARBASE

EGDIR=			${PREFIX}/share/examples/varnish
PKG_SYSCONFSUBDIR=	varnish
CONF_FILES=		${EGDIR}/default.vcl ${PKG_SYSCONFDIR}/default.vcl

VRNUSER?=		varnish
VRNGROUP?=		${VRNUSER}
STATEDIR=		${VARBASE}/db
VRNDIR=			${STATEDIR}/${PKGBASE}

CONFIGURE_ARGS+=	--localstatedir=${STATEDIR}
CONFIGURE_ARGS+=	--sysconfdir=${PKG_SYSCONFDIR}
OWN_DIRS+=		${VRNDIR}
OWN_DIRS_PERMS+=	${VRNDIR} ${VRNUSER} ${VRNGROUP} 0770

PKG_GROUPS+=		${VRNGROUP}
PKG_USERS+=		${VRNUSER}:${VRNGROUP}
PKG_HOME.${VRNUSER}=	${VRNDIR}
PKG_SHELL.${VRNUSER}=	${SH}
PKG_GECOS.${VRNUSER}=	Varnish daemon user

RCD_SCRIPTS=            varnishd varnishlog varnishncsa

.include "../../lang/python/pyversion.mk"
BUILD_DEPENDS+=       ${PYPKGPREFIX}-docutils>=0.5:../../textproc/py-docutils

.include "../../devel/pcre/buildlink3.mk"
.include "../../mk/bsd.prefs.mk"

.if ${OPSYS} == "SunOS"
.  if ${PKGSRC_COMPILER} == "sunpro"
CONFIGURE_ENV+=	VCC="cc -Kpic -G -o %o %s"
.  else
CONFIGURE_ENV+=	VCC_CC="gcc -fpic -shared -o %o %s"
.  endif
.endif

pre-configure:
	cd ${WRKSRC} && autoconf

.include "../../mk/pthread.buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
