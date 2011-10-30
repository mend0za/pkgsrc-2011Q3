# $NetBSD$
#
NC_PATCH_REVS=\
	20061223 20061230 20070106 20070113 20070120 20070127 20070128	\
	20070203 20070210 20070217 20070224 20070303 20070310 20070311	\
	20070317 20070324 20070331 20070407 20070414 20070421 20070428	\
	20070505 20070512 20070526 20070602 20070609 20070612 20070623	\
	20070630 20070707 20070714 20070716 20070721 20070728 20070812	\
	20070818 20070825 20070901 20070908 20070915 20070929 20071006	\
	20071013 20071020 20071103 20071117 20071124 20071201 20071215	\
	20071222 20080105 20080112 20080119 20080203 20080209 20080223	\
	20080301 20080308

NC_DIST_PATCHES=	${NC_PATCH_REVS:@.rev.@${DISTNAME}-${.rev.}.patch.gz@}
NC_DIST_PATCH_SITES=	${MASTER_SITE_FREEBSD_LOCAL:=rafan/ncurses/}
###
### XXX Patches come out weekly, so if there's an overlap, this package
###	is too stale!  That is, 5.7 should be out before that ever occurs.
###
NC_REVISION=	${NC_PATCH_REVS:[-1]:C/^[0-9]{4}[0]?/pl/}