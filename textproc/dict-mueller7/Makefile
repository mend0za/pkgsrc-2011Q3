# $NetBSD: Makefile,v 1.1.1.1 2011/05/08 18:19:54 cheusov Exp $

DISTNAME=	Mueller7GPL
PKGNAME=	dict-mueller7-1.2
CATEGORIES=	textproc
MASTER_SITES=	http://dict.osdn.org.ua/ \
		http://mova.org/~cheusov/pub/dict-mueller/
EXTRACT_SUFX=	.tgz

MAINTAINER=	cheusov@tut.by
HOMEPAGE=	http://mueller-dic.chat.ru/
COMMENT=	English-Russian dictionary by Mueller for dictd
LICENSE=	gnu-gpl-v2

DEPENDS+=	dict-server>=1.9.14:../../textproc/dict-server

BUILD_DEPENDS+=	dict-server>=1.10.2:../../textproc/dict-server
BUILD_DEPENDS+=	p5-Unicode-Map8-[0-9]*:../../converters/p5-Unicode-Map8
BUILD_DEPENDS+= coreutils-[0-9]*:../../sysutils/coreutils # we need GNU fmt

WRKSRC=		${WRKDIR}/usr/local/share/dict

PKG_DESTDIR_SUPPORT=	user-destdir

USE_TOOLS+=		gsed perl tar gzip

INSTALLATION_DIRS+=	share/dictd

pre-configure:
	cp files/mueller2utf8 files/to-dict ${WRKSRC}

do-build:
	cd ${WRKSRC} && \
	sh to-dict --src-data Mueller7GPL.koi mueller7.data > /dev/null && \
	perl mueller2utf8 < mueller7.data > tmp_1 && \
	${PREFIX}/bin/dictfmt --utf8 -p --columns 0 \
		-s 'Mueller English-Russian Dictionary' \
		-u 'http://www.chat.ru/~mueller_dic' \
		--headword-separator ', ' mueller7 < tmp_1 && \
	${PREFIX}/bin/dictzip *.dict

do-install:
	${INSTALL_DATA} ${WRKSRC}/*.dict.dz ${WRKSRC}/*.index \
		${DESTDIR}${PREFIX}/share/dictd

.include "../../mk/bsd.pkg.mk"
