# $NetBSD: Makefile,v 1.15 2011/04/22 13:44:49 obache Exp $
#

DISTNAME=	aspell-cy-0.50-3
PKGNAME=	${DISTNAME:C/cy-(.*)-(.*)$/welsh-\1.\2/}
PKGREVISION=	5
CATEGORIES=	textproc
MASTER_SITES=	${MASTER_SITE_GNU:=aspell/dict/cy/}
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://aspell.net/
COMMENT=	Welsh language support for aspell

PKG_DESTDIR_SUPPORT=	user-destdir

HAS_CONFIGURE=	YES

.include "../../textproc/aspell/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
