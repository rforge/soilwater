set pkgname=soilwaterfun
set version=1.0.10

cd /D "%rPackagesDir%\soilwater\pkg" 

R CMD check --no-examples %pkgname%_%version%.tar.gz

@REM --as-cran

pause
