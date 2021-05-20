# Cleanout folders
#Remove-Item .\Assignment-1-Pack\*.*
#Remove-Item .\Assignment-2-Pack\*.*
#Remove-Item .\Assignment-3-Pack\*.*
#Remove-Item .\Assignment-4-Pack\*.*


# Copy Items to Pack Folders

#Copy-Item .\Assets\LIT-A1-Metric.rfa .\Assignment-1-Pack\LIT-A1-Metric.rfa -Force
#Copy-Item .\Assets\LIT-A1-Metric.rfa .\Assignment-2-Pack\LIT-A1-Metric.rfa -Force
#Copy-Item .\Assets\LIT-A1-Metric.rfa .\Assignment-3-Pack\LIT-A1-Metric.rfa -Force
#Copy-Item .\Assets\LIT-A1-Metric.rfa .\Assignment-4-Pack\LIT-A1-Metric.rfa -Force
#Write-Host 'A1 Sheet Copied to Packs'

#Copy-Item .\Assets\RMEP01-LIT-00-ZZ-M3-A-001-A1-P02.rvt .\Assignment-1-Pack\RMEP01-LIT-00-ZZ-M3-A-001-A1-P02.rvt -Force
#Copy-Item .\Assets\RMEP01-LIT-00-ZZ-M3-A-001-A1-P02.rvt .\Assignment-2-Pack\RMEP02-LIT-00-ZZ-M3-A-001-A1-P02.rvt -Force
#Copy-Item .\Assets\RMEP01-LIT-00-ZZ-M3-A-001-A1-P02.rvt .\Assignment-3-Pack\RMEP03-LIT-00-ZZ-M3-A-001-A1-P02.rvt -Force
#Copy-Item .\Assets\RMEP01-LIT-00-ZZ-M3-A-001-A1-P02.rvt .\Assignment-4-Pack\RMEP04-LIT-00-ZZ-M3-A-001-A1-P02.rvt -Force
#Write-Host 'Arch Model Copied to Packs'

#Copy-Item .\Assets\RMEP01\RMEP01-E-101-A1-.pdf .\Assignment-1-Pack\RMEP01-LIT-00-ZZ-DR-E-101-A1-P02.pdf -Force
#Write-Host 'RMEP01 Drawings Copied'

#Copy-Item .\Assets\RMEP02\RMEP02-H-101-A1-.pdf .\Assignment-2-Pack\RMEP02-LIT-00-ZZ-DR-H-101-A1-P02.pdf -Force
#Copy-Item .\Assets\RMEP02\RMEP02-H-102-A1-.pdf .\Assignment-2-Pack\RMEP02-LIT-00-ZZ-DR-H-102-A1-P02.pdf -Force
#Copy-Item .\Assets\RMEP02\RMEP02-H-103-A1-.pdf .\Assignment-2-Pack\RMEP02-LIT-00-ZZ-DR-H-103-A1-P02.pdf -Force
#Copy-Item .\Assets\RMEP02\RMEP02-H-104-A1-.pdf .\Assignment-2-Pack\RMEP02-LIT-00-ZZ-DR-H-104-A1-P02.pdf -Force
#Write-Host 'RMEP02 Drawings Copied'


#Copy-Item .\Assets\RMEP03\RMEP03-M-101-A1-.pdf .\Assignment-3-Pack\RMEP03-LIT-00-ZZ-DR-M-101-A1-P02.pdf -Force
#Copy-Item .\Assets\RMEP03\RMEP03-M-102-A1-.pdf .\Assignment-3-Pack\RMEP03-LIT-00-ZZ-DR-M-102-A1-P02.pdf -Force
#Copy-Item .\Assets\RMEP03\RMEP03-M-103-A1-.pdf .\Assignment-3-Pack\RMEP03-LIT-00-ZZ-DR-M-103-A1-P02.pdf -Force
#Write-Host 'RMEP03 Drawings Copied'



# Compile Latex Files


pdflatex .\Assignments\RARC01-LIT-00-ZZ-SP-A-101-A1-P02.tex
Remove-Item RARC01-LIT-00-ZZ-SP-A-101-A1-P02.aux
Remove-Item RARC01-LIT-00-ZZ-SP-A-101-A1-P02.log
Remove-Item RARC01-LIT-00-ZZ-SP-A-101-A1-P02.out
Move-Item -Path .\RARC01-LIT-00-ZZ-SP-A-101-A1-P02.pdf -Destination .\Assignment-1-Pack\RARC01-LIT-00-ZZ-SP-A-101-A1-P02.pdf -Force

pdflatex .\Assignments\RARC02-LIT-00-ZZ-SP-A-201-A1-P02.tex
Remove-Item RARC02-LIT-00-ZZ-SP-A-201-A1-P02.aux
Remove-Item RARC02-LIT-00-ZZ-SP-A-201-A1-P02.log
Remove-Item RARC02-LIT-00-ZZ-SP-A-201-A1-P02.out
Move-Item -Path .\RARC02-LIT-00-ZZ-SP-A-201-A1-P02.pdf -Destination .\Assignment-2-Pack\RARC02-LIT-00-ZZ-SP-A-201-A1-P02.pdf -Force


pdflatex .\Assignments\RARC03-LIT-00-ZZ-SP-A-301-A1-P02.tex
Remove-Item RARC03-LIT-00-ZZ-SP-A-301-A1-P02.aux
Remove-Item RARC03-LIT-00-ZZ-SP-A-301-A1-P02.log
Remove-Item RARC03-LIT-00-ZZ-SP-A-301-A1-P02.out
Move-Item -Path .\RARC03-LIT-00-ZZ-SP-A-301-A1-P02.pdf -Destination .\Assignment-3-Pack\RARC03-LIT-00-ZZ-SP-A-301-A1-P02.pdf -Force


Remove-Item RARC01-LIT-00-ZZ-IE-E-001-A1-P02.zip
Remove-Item RARC02-LIT-00-ZZ-IE-H-001-A1-P02.zip
Remove-Item RARC03-LIT-00-ZZ-IE-M-001-A1-P02.zip

Compress-Archive .\Assignment-1-Pack\ RARC01-LIT-00-ZZ-IE-E-001-A1-P02.zip -Update

Compress-Archive .\Assignment-2-Pack\ RARC02-LIT-00-ZZ-IE-H-001-A1-P02.zip -Update

Compress-Archive .\Assignment-3-Pack\ RARC03-LIT-00-ZZ-IE-M-001-A1-P02.zip -Update



Write-Host -NoNewLine 'Press any key to continue...';
$null = $Host.UI.RawUI.ReadKey('NoEcho,IncludeKeyDown');