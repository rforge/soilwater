set pkgname=soilwaterptf
set version=1.1.3

cd /D "%rPackagesDir%\soilwater\pkg" 

R CMD check --no-examples %pkgname%_%version%.tar.gz

@REM --as-cran

pause
