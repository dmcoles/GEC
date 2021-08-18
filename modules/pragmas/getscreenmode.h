#ifndef PRAGMAS_GETSCREENMODE_PRAGMAS_H
#define PRAGMAS_GETSCREENMODE_PRAGMAS_H

/*
**	$Id: getscreenmode_pragmas.h 40.2 2001-07-08 12:50:28 olsen Exp $
**
**	Lattice 'C', Aztec 'C', SAS/C and DICE format pragma files.
*/

#ifndef CLIB_GETSCREENMODE_PROTOS_H
#include <clib/getscreenmode_protos.h>
#endif /* CLIB_GETSCREENMODE_PROTOS_H */

/* "getscreenmode.class" */
/*--- functions in V40 or higher (Release 3.1) ---*/
#pragma libcall GetScreenModeBase GetScreenMode_GetClass 1e 00

#endif /* PRAGMAS_GETSCREENMODE_PRAGMAS_H */