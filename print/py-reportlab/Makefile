# $NetBSD: Makefile,v 1.41 2011/04/15 08:29:19 adam Exp $

DISTNAME=	reportlab-2.5
DISTFILES=	${DEFAULT_DISTFILES} pfbfer.zip
PKGNAME=	${PYPKGPREFIX}-${DISTNAME}
CATEGORIES=	print python
MASTER_SITES=	http://www.reportlab.com/ftp/
SITES.pfbfer.zip=	http://www.reportlab.com/ftp/fonts/

MAINTAINER=	joerg@NetBSD.org
HOMEPAGE=	http://www.reportlab.com/
COMMENT=	Powerful PDF-generating toolkit for Python
LICENSE=	modified-bsd

PKG_DESTDIR_SUPPORT=	user-destdir

EXTRACT_DIR.pfbfer.zip=	${WRKSRC}/src/reportlab/fonts

PYDISTUTILSPKG=	yes

.include "../../graphics/freetype2/buildlink3.mk"
.include "../../graphics/libart/buildlink3.mk"
.include "../../graphics/py-imaging/buildlink3.mk"
.include "../../lang/python/extension.mk"
.include "../../textproc/py-xml/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
