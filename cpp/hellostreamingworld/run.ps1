# �����ݴ�ȣ�������ʱ����ֹ�ű�ִ��
$ErrorActionPreference="Stop"

cd sln1
rm -Force -Recurse CMake[CF]*
# $install="E:\gRPC\grpc\180628d"
# cmake .. -DCMAKE_INSTALL_PREFIX="${install}" -DOPENSSL_ROOT_DIR="E:\gRPC\grpc\OpenSSL-Win32" -DZLIB_ROOT="${install}"  -G "Visual Studio 14 2015"
$vcpkg="F:\vcpkg\scripts\buildsystems\vcpkg.cmake"
Set-Alias -name cmakexe -Value F:\vcpkg\downloads\tools\cmake-3.11.4-windows\cmake-3.11.4-win32-x86\bin\cmake.exe
cmakexe .. -DCMAKE_TOOLCHAIN_FILE="${vcpkg}"
cmakexe --build . --config Release
cd ..