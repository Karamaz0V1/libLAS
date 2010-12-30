@echo off

set G="NMake Makefiles"
REM set G="Visual Studio 9 2008"
REM set G="Visual Studio 2010"
set LIBLAS=D:\liblas
set OSGEO4W=C:\OSGeo4W
set BOOST=D:\boost\boost_1_44
set ORACLE_HOME=%OSGEO4W%
set LASZIP_ROOT=d:\laszip
REM set BUILD_TYPE=RelWithDebInfo
REM set BUILD_TYPE=Debug
set BUILD_TYPE=Release

set PATH=%OSGEO4W%\apps\gdal-dev\bin;%OSGEO4W%\bin;%PATH%

    
cmake -G %G% ^
    -DBOOST_INCLUDEDIR=%BOOST% ^
    -DWITH_GDAL=ON ^
    -DWITH_GEOTIFF=ON ^
    -DWITH_ORACLE=ON ^
    -DWITH_LASZIP=ON ^
    -DTIFF_INCLUDE_DIR=%OSGEO4W%\include ^
    -DTIFF_LIBRARY=%OSGEO4W%\lib\libtiff_i.lib ^
    -DGEOTIFF_INCLUDE_DIR=%OSGEO4W%\include ^
    -DGEOTIFF_LIBRARY=%OSGEO4W%\lib\geotiff_i.lib ^
    -DGDAL_INCLUDE_DIR=%OSGEO4W%\apps\gdal-dev\include ^
    -DGDAL_LIBRARY=%OSGEO4W%\apps\gdal-dev\lib\gdal_i.lib ^
    -DORACLE_INCLUDE_DIR=%ORACLE_HOME%\include ^
    -DORACLE_OCI_LIBRARY=%ORACLE_HOME%\lib\oci.lib ^
    -DLASZIP_INCLUDE_DIR=%LASZIP_ROOT%\include ^
    -DLASZIP_LIBRARY=%LASZIP_ROOT%\bin\Release\liblaszip.lib ^
    -DCMAKE_BUILD_TYPE=%BUILD_TYPE% ^
    -DCMAKE_VERBOSE_MAKEFILE=OFF ^
    %LIBLAS%
