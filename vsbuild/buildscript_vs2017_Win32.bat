set PATH=C:\Program Files\CMake\bin;%PATH%

set Platform=x86
set Configuration=Debug

cd ..\..

mkdir stepcode-vs2017-build
cd stepcode-vs2017-build

rmdir /s /q %Platform%-%Configuration%
mkdir %Platform%-%Configuration%
cd %Platform%-%Configuration%

cmake.exe -G "Visual Studio 15 2017" -DSC_INSTALL_PREFIX=%cd%\..\..\stepcode-vs2017-install\%Platform%-%Configuration% -DSC_BUILD_SCHEMAS=ap203;ap214e3;ifc4 -DCMAKE_CONFIGURATION_TYPES=%Configuration% -DSC_BUILD_STATIC_LIBS=ON ..\..\stepcode-git-fork
