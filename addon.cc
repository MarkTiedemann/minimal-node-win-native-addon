#define NAPI_VERSION 1
#include <string>
#include <windows.h>
#include "include\node_api.h"
#define MAX_LENGTH MAX_COMPUTERNAME_LENGTH + 1

napi_value init(napi_env env, napi_value exports)
{
  // Get computer name
  TCHAR name_tchar[MAX_LENGTH];
  DWORD name_length = MAX_LENGTH;
  GetComputerName(name_tchar, &name_length);

  // Convert to string
  std::string name_str = name_tchar;

  // Convert to napi value
  napi_value napi_str;
  napi_create_string_utf8(env, name_str.c_str(), name_str.length(), &napi_str);

  // Export computer name
  napi_set_named_property(env, exports, "computer_name", napi_str);

  return exports;
}

NAPI_MODULE(addon, init)
