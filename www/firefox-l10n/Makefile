# $NetBSD: Makefile,v 1.8 2011/09/13 06:09:26 obache Exp $
#

FIREFOX_VER=	6.0.2
PKGNAME=	firefox-l10n-${FIREFOX_VER}
DISTNAME=	# empty
CATEGORIES=	www
MASTER_SITES=	${MASTER_SITE_MOZILLA:=firefox/releases/${FIREFOX_VER}/linux-i686/xpi/}

MAINTAINER=	tnn@NetBSD.org
HOMEPAGE=	http://www.mozilla.com/en-US/firefox/
COMMENT=	Language packs for www/firefox

PKG_DESTDIR_SUPPORT=	user-destdir

DIST_SUBDIR=	${PKGNAME_NOREV}
DISTFILES=	${XPI_FILES}

NO_BUILD=	yes

FIREFOX_LOCALES=af ak ar ast be bg bn-BD bn-IN br bs ca cs cy da de	\
		el en-GB en-US en-ZA eo es-AR es-CL es-ES es-MX et	\
		eu fa fi fr fy-NL ga-IE gd gl gu-IN he hi-IN hr hu	\
		hy-AM id is it ja kk kn ko ku lg lt lv mai mk ml mr	\
		nb-NO nl nn-NO nso or pa-IN pl pt-BR pt-PT rm ro ru	\
		si sk sl son sq sr sv-SE ta-LK ta te th tr uk vi	\
		zh-CN zh-TW zu

EXTENSIONS_DIR=		${PREFIX}/lib/firefox/extensions
XPI_FILES=		${FIREFOX_LOCALES:=.xpi}

# remove head of 3 empty lines
SUBST_CLASSES+=		chop
SUBST_STAGE.chop=	post-configure
SUBST_FILES.chop=	ta-LK/install.rdf
SUBST_SED.chop=		-e '1,3d'

.include "../../devel/xulrunner/xpi.mk"
.include "../../mk/bsd.pkg.mk"
