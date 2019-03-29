param($arch)

$visual_studio_root = "C:\Program Files (x86)\Microsoft Visual Studio\$env:visual_studio_version\$env:visual_studio_edition"
$visual_cpp_root = "$visual_studio_root\VC\Tools\MSVC\$env:visual_cpp_version"

$lib_win_ucrt = "C:\Program Files (x86)\Windows Kits\10\Lib\$env:windows_sdk_version\ucrt\$arch"
$lib_win_um = "C:\Program Files (x86)\Windows Kits\10\Lib\$env:windows_sdk_version\um\$arch"
$env:lib = "$visual_cpp_root\lib\$arch;$lib_win_ucrt;$lib_win_um"

$link = "$visual_cpp_root\bin\Host$arch\$arch\link.exe"
& $link /nologo /dll /release /out:$arch\addon.node $arch\node.lib $arch\addon.obj
