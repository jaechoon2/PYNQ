//VBXCOPYRIGHTTAG

#ifndef __VBX_COPYRIGHT_H
#define __VBX_COPYRIGHT_H


#define HEADER_SIZE	4096

#ifdef  STRINGY
#undef  STRINGY
#endif
#define STRINGY(A) #A

#define VBXPROTOHEADER2(fname) vbx_ ## fname ## _info
#define VBXPROTOHEADER1(fname) VBXPROTOHEADER2(fname)

#if defined(_MSC_VER)
#define COMPILER "Microsoft Visual Studio " STRINGY(_MSC_VER)
#else
#define COMPILER "gcc " __VERSION__
#endif

#ifdef __cplusplus
#define extern_decl extern "C"
#else
#define extern_decl extern
#endif

#define VBXCOPYRIGHT(fname)	  \
	extern_decl char	fname##_copyright[]; \
	char	fname##_copyright[] =   "Function " STRINGY(fname) \
	     "\nCopyright (C) 2012-2016 VectorBlox Computing, Inc.\n" \
	     "File " __FILE__ " compiled on " __TIME__ " " __DATE__ \
	     " using " COMPILER \
	     ".\n" ;




#endif // __VBX_COPYRIGHT_H
