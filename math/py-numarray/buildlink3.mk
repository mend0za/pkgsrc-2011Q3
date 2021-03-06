# $NetBSD: buildlink3.mk,v 1.9 2009/03/20 19:24:58 joerg Exp $

BUILDLINK_TREE+=	pynumarray

.if !defined(PY_NUMARRAY_BUILDLINK3_MK)
PY_NUMARRAY_BUILDLINK3_MK:=

.include "../../lang/python/pyversion.mk"

BUILDLINK_API_DEPENDS.pynumarray+=	${PYPKGPREFIX}-numarray>=1.1.1
BUILDLINK_ABI_DEPENDS.pynumarray?=	${PYPKGPREFIX}-numarray>=1.3.3nb1
BUILDLINK_PKGSRCDIR.pynumarray?=	../../math/py-numarray
.endif # PY_NUMARRAY_BUILDLINK3_MK

BUILDLINK_TREE+=	-pynumarray
