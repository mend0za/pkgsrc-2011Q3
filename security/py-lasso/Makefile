# $NetBSD: Makefile,v 1.6 2011/04/22 13:44:38 obache Exp $
#

PKGNAME=	${PYPKGPREFIX}-${DISTNAME}
PKGREVISION=	2
COMMENT=	Libery Alliance Single Sign On binding for Python

PKG_DESTDIR_SUPPORT=	user-destdir

.include "../../lang/python/pyversion.mk"

BUILD_DEPENDS+=	${PYPKGPREFIX}-expat-[0-9]*:../../textproc/py-expat
.if ${PYPKGPREFIX} == "py24"
BUILD_DEPENDS+=	${PYPKGPREFIX}-elementtree-[0-9]*:../../textproc/py-elementtree
.endif

CONFIGURE_ARGS+=	--disable-php4
CONFIGURE_ARGS+=	--disable-perl

INSTALL_DIRS=	bindings/python

PY_PATCHPLIST=	yes
.include "../../lang/python/extension.mk"

.include "../../security/lasso/buildlink3.mk"

.include "../../security/lasso/Makefile.common"

