# $NetBSD: Makefile,v 1.6 2011/08/14 08:18:07 obache Exp $

DISTNAME=	DBIx-Class-RDBOHelpers-0.09
PKGNAME=	p5-${DISTNAME}
PKGREVISION=	2
CATEGORIES=	databases perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=DBIx/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://search.cpan.org/dist/DBIx-Class-RDBOHelpers/
COMMENT=	DBIC compat with Rose::DBx::Object::MoreHelpers
LICENSE=	${PERL5_LICENSE}

DEPENDS+=	p5-Data-Dump-[0-9]*:../../devel/p5-Data-Dump

BUILD_DEPENDS+=	p5-DBICx-TestDatabase-[0-9]*:../../databases/p5-DBICx-TestDatabase
BUILD_DEPENDS+=	p5-DBIx-Class-[0-9]*:../../databases/p5-DBIx-Class

USE_LANGUAGES=	# empty
PERL5_PACKLIST=	auto/DBIx/Class/RDBOHelpers/.packlist

PKG_DESTDIR_SUPPORT=    user-destdir

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
