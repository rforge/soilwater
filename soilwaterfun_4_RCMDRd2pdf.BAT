set project=soilwater
set pkgname=soilwaterfun
set version=1.0.10

cd /D "%rPackagesDir%\%project%\pkg" 

R CMD Rd2pdf %pkgname% --output=%pkgname%.%version%.pdf

pause
