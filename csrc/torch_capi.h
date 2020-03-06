// -*- mode: c++ -*-
#ifndef _TORCH_CAPI_H
#define _TORCH_CAPI_H

#ifdef _OS_WINDOWS_
#  define STDCALL __stdcall
#  define CAPI_DLLEXPORT __declspec(dllexport)
#else
#  define STDCALL
#  define CAPI_DLLEXPORT __attribute__ ((visibility("default")))
#endif

#endif // _TORCH_CAPI_H
