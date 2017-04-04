//VBXCOPYRIGHTTAG
/**
 * @file
 * @defgroup VectorBlox_MXP VectorBlox MXP
 * @brief Details the instance of our VectorBlox MXP processor
 *
 * @ingroup VBXapi
 */
/**@{*/

#ifndef __VECTORBLOX_MXP_H
#define __VECTORBLOX_MXP_H

#ifdef __cplusplus
extern "C" {
#endif

#if defined(__NIOS2__)
#include "vectorblox_mxp_nios.h"
#else
#include "vectorblox_mxp_xil.h"
#endif

#ifdef __cplusplus
}
#endif

#endif //__VECTORBLOX_MXP_H
/**@}*/
