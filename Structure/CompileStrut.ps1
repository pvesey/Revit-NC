$Assignment1 = [PSCustomObject]@{
    Name = 'RSTR01-LIT-00-ZZ-SP-A-001-A1-P02'
    Spec = './Assignments/RSTR01-LIT-00-ZZ-SP-A-001-A1-P02.tex'
    HomeDir = './RSTR01/'
    Archive = 'RSTR01-LIT-00-ZZ-IE-A-001-A1-P02.zip'
    Dwg1Out = '.\Assets\RSTR01\RMEP01-E-101-A1-.pdf'
}


Write-Host $Assignment1.Name





# Cleanout folders
#Remove-Item $Assignment1.HomeDir + '*.*'
#Remove-Item .\RARC02\*.*
#Remove-Item .\RARC03\*.*
#
#
# Copy Items to Pack Folders

#Copy-Item .\Assets\LIT-A1-Metric-Arch.rfa .\RARC01\LIT-A1-Metric-Arch.rfa -Force
#Copy-Item .\Assets\LIT-A1-Metric-Arch.rfa .\RARC02\LIT-A1-Metric-Arch.rfa -Force
#Copy-Item .\Assets\LIT-A1-Metric-Arch.rfa .\RARC03\LIT-A1-Metric-Arch.rfa -Force

#Write-Host 'A1 Sheet Copied to Packs'
#
#Copy-Item .\Assets\RMEP01-LIT-00-ZZ-M3-A-001-A1-P02.rvt .\RARC01\RMEP01-LIT-00-ZZ-M3-A-001-A1-P02.rvt -Force
#Copy-Item .\Assets\RMEP01-LIT-00-ZZ-M3-A-001-A1-P02.rvt .\RARC02\RMEP02-LIT-00-ZZ-M3-A-001-A1-P02.rvt -Force
#Copy-Item .\Assets\RMEP01-LIT-00-ZZ-M3-A-001-A1-P02.rvt .\RARC03\RMEP03-LIT-00-ZZ-M3-A-001-A1-P02.rvt -Force

#Write-Host 'Arch Model Copied to Packs'
#
#Copy-Item .\Assets\RMEP01\RMEP01-E-101-A1-.pdf .\Assignment-1-Pack\RMEP01-LIT-00-ZZ-DR-E-101-A1-P02.pdf -Force
#Write-Host 'RMEP01 Drawings Copied'
#
#Copy-Item .\Assets\RMEP02\RMEP02-H-101-A1-.pdf .\Assignment-2-Pack\RMEP02-LIT-00-ZZ-DR-H-101-A1-P02.pdf -Force
#Copy-Item .\Assets\RMEP02\RMEP02-H-102-A1-.pdf .\Assignment-2-Pack\RMEP02-LIT-00-ZZ-DR-H-102-A1-P02.pdf -Force
#Copy-Item .\Assets\RMEP02\RMEP02-H-103-A1-.pdf .\Assignment-2-Pack\RMEP02-LIT-00-ZZ-DR-H-103-A1-P02.pdf -Force
#Copy-Item .\Assets\RMEP02\RMEP02-H-104-A1-.pdf .\Assignment-2-Pack\RMEP02-LIT-00-ZZ-DR-H-104-A1-P02.pdf -Force
#Write-Host 'RMEP02 Drawings Copied'
#
#
#Copy-Item .\Assets\RMEP03\RMEP03-M-101-A1-.pdf .\Assignment-3-Pack\RMEP03-LIT-00-ZZ-DR-M-101-A1-P02.pdf -Force
#Copy-Item .\Assets\RMEP03\RMEP03-M-102-A1-.pdf .\Assignment-3-Pack\RMEP03-LIT-00-ZZ-DR-M-102-A1-P02.pdf -Force
#Copy-Item .\Assets\RMEP03\RMEP03-M-103-A1-.pdf .\Assignment-3-Pack\RMEP03-LIT-00-ZZ-DR-M-103-A1-P02.pdf -Force
#Write-Host 'RMEP03 Drawings Copied'


# Compile Latex Files


#pdflatex (".\Assignments\" + $Assignment1.Name + ".tex")
#Remove-Item ($Assignment1.Name + ".aux")
#Remove-Item ($Assignment1.Name + ".log")
#Remove-Item ($Assignment1.Name + ".out")
#Move-Item -Path ("./" + $Assignment1.Name + ".pdf") -Destination ($Assignment1.HomeDir + $Assignment1.Name + ".pdf") -Force




#Remove-Item $Assignment1.Archive
#Remove-Item $Assignment2.Archive
#Remove-Item $Assignment3.Archive

#
#Compress-Archive $Assignment1.HomeDir $Assignment1.Archive -Update
#Compress-Archive $Assignment2.HomeDir $Assignment2.Archive -Update
#Compress-Archive $Assignment3.HomeDir $Assignment3.Archive -Update
#

Write-Host -NoNewLine 'Script Complete: Press any key to continue...';
$null = $Host.UI.RawUI.ReadKey('NoEcho,IncludeKeyDown');