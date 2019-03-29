param($arch)

.\variables.ps1

$visual_studio_root = "C:\Program Files (x86)\Microsoft Visual Studio\$env:visual_studio_version\$env:visual_studio_edition"
$visual_cpp_root = "$visual_studio_root\VC\Tools\MSVC\$env:visual_cpp_version"

$inc_win_ucrt = "C:\Program Files (x86)\Windows Kits\10\Include\$env:windows_sdk_version\ucrt"
$inc_win_um = "C:\Program Files (x86)\Windows Kits\10\Include\$env:windows_sdk_version\um"
$inc_win_shared = "C:\Program Files (x86)\Windows Kits\10\Include\$env:windows_sdk_version\shared"
$env:include = "$visual_cpp_root\include;$inc_win_ucrt;$inc_win_um;$inc_win_shared"

$cl = "$visual_cpp_root\bin\Host$arch\$arch\cl.exe"
& $cl /nologo /EHsc /c /Fo$arch\addon.obj addon.cc
