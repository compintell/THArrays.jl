// -*- mode: c++ -*-
#ifndef _TORCH_CAPI_H
#define _TORCH_CAPI_H

#ifdef _WIN32
#  define STDCALL __stdcall
#  define CAPI_DLLEXPORT __declspec(dllexport)
#else
#  define STDCALL
#  define CAPI_DLLEXPORT __attribute__ ((visibility("default")))
#endif

extern void (*error_handler)(const char *str);

#define PROTECT(x) \
  try { \
    x \
  } catch (const std::exception& e) {     \
    if(error_handler) error_handler(e.what());\
    throw(e); \
  }

#endif // _TORCH_CAPI_H
