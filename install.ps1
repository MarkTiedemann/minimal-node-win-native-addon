$progresspreference = 'silentlycontinue'

mkdir include
iwr -o include\node_api.h -ur https://raw.githubusercontent.com/nodejs/node/v11.x/src/node_api.h
iwr -o include\node_api_types.h -ur https://raw.githubusercontent.com/nodejs/node/v11.x/src/node_api_types.h
iwr -o include\js_native_api.h -ur https://raw.githubusercontent.com/nodejs/node/v11.x/src/js_native_api.h
iwr -o include\js_native_api_types.h -ur https://raw.githubusercontent.com/nodejs/node/v11.x/src/js_native_api_types.h

mkdir x64
iwr -o x64\node.lib -ur https://nodejs.org/dist/latest-v11.x/win-x64/node.lib
iwr -o x64\node.exe -ur https://nodejs.org/dist/latest-v11.x/win-x64/node.exe

mkdir x86
iwr -o x86\node.lib -ur https://nodejs.org/dist/latest-v11.x/win-x86/node.lib
iwr -o x86\node.exe -ur https://nodejs.org/dist/latest-v11.x/win-x86/node.exe
