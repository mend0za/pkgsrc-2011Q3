# $NetBSD: Makefile,v 1.14 2010/03/09 11:09:51 pettai Exp $

DISTNAME=	mp32ogg-0.11
PKGREVISION=	5
CATEGORIES=	audio perl5
MASTER_SITES=	${MASTER_SITE_LOCAL}
EXTRACT_SUFX=	# empty

MAINTAINER=	rxg@NetBSD.org
HOMEPAGE=	http://faceprint.com/code/
COMMENT=	Convert MP3 files to Ogg Vorbis files
LICENSE=	artistic

DEPENDS+=	mpg123>=0.59.18:../../audio/mpg123
DEPENDS+=	vorbis-tools>=1.0.0.7:../../audio/vorbis-tools
DEPENDS+=	p5-MP3-Info>=1.00:../../audio/p5-MP3-Info
DEPENDS+=	p5-String-ShellQuote>=1.00:../../textproc/p5-String-ShellQuote

PKG_DESTDIR_SUPPORT=	user-destdir

WRKSRC=		${WRKDIR}
USE_TOOLS+=	perl:run
REPLACE_PERL=	${WRKSRC}/${DISTNAME}

INSTALLATION_DIRS=	bin

do-build:
	${SED} -e "s,/usr/bin,${PREFIX}/bin," ${WRKSRC}/${DISTNAME} > ${WRKSRC}/mp32ogg

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/mp32ogg ${DESTDIR}${PREFIX}/bin

.include "../../mk/bsd.pkg.mk"
