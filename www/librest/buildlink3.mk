# $NetBSD: buildlink3.mk,v 1.3 2011/06/10 09:39:46 obache Exp $

BUILDLINK_TREE+=	librest

.if !defined(LIBREST_BUILDLINK3_MK)
LIBREST_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.librest+=	librest>=0.6
BUILDLINK_ABI_DEPENDS.librest?=	librest>=0.6nb2
BUILDLINK_PKGSRCDIR.librest?=	../../www/librest

.include "../../devel/glib2/buildlink3.mk"
.include "../../net/libsoup24/buildlink3.mk"
.include "../../textproc/libxml2/buildlink3.mk"
.endif	# LIBREST_BUILDLINK3_MK

BUILDLINK_TREE+=	-librest
