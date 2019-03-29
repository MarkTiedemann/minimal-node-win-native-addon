#include <string>
#include <windows.h>
#include "include\node_api.h"

napi_value init(napi_env env, napi_value exp)
{
  TCHAR tch[MAX_COMPUTERNAME_LENGTH + 1];
  DWORD dw = sizeof(tch) / sizeof(tch[0]);
  GetComputerName(tch, &dw);

#ifdef UNICODE
  std::wstring wstr = tch;
  std::string str = std::string(wstr.begin(), wstr.end());
#else
  std::string str = tch;
#endif

  napi_value nv;
  napi_create_string_utf8(env, str.c_str(), NAPI_AUTO_LENGTH, &nv);
  napi_set_named_property(env, exp, "computer_name", nv);

  return exp;
}

NAPI_MODULE(addon, init)
