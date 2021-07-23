#include <PR/gbi.h>

#define __mk_gsSPLine3D_w1f(v0, v1, v2, v3)		            	\
     (_SHIFTR((v3), 0,8)|_SHIFTL((v2), 8, 8)|	                  	\
     _SHIFTL((v1), 16, 8)|_SHIFTL((v0), 24, 8))

#define mk_Line3D(v0, v1, v2, v3)				            	\
{{								                  	\
	_SHIFTL(G_LINE3D, 24, 8)|0,                                 	\
	__mk_gsSPLine3D_w1f(v0, v1, v2, v3)			           		\
}}
