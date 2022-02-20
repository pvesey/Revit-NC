$Assignment1 = [PSCustomObject]@{
    Name = 'RARC01-TUS-XX-XX-SP-A-001-A1-P02'
    Spec = './SP/RARC01-TUS-XX-XX-SP-A-001-A1-P02.tex'
    HomeDir = './RARC01/'
    Archive = 'RARC01-TUS-XX-XX-IE-A-001-A1-P02.zip'
    Dwg1Src = 'RARC01/RARC01-A-001-A1-P02-.pdf'
    Dwg1 = 'RARC01-TUS-00-ZZ-DR-A-001-A1-P02.pdf'
    Dwg2Src = 'RARC01/RARC01-A-002-A1-P02-.pdf'
    Dwg2 = 'RARC01-TUS-00-ZZ-DR-A-002-A1-P02.pdf'
    Dwg3Src = 'RARC01/RARC01-A-003-A1-P02-.pdf'
    Dwg3 = 'RARC01-TUS-00-ZZ-DR-A-003-A1-P02.pdf'
    Dwg4Src = 'RARC01/RARC01-A-004-A1-P02-.pdf'
    Dwg4 = 'RARC01-TUS-00-ZZ-DR-A-004-A1-P02.pdf'
    Dwg5Src = 'RARC01/RARC01-A-005-A1-P02-.pdf'
    Dwg5 = 'RARC01-TUS-00-ZZ-DR-A-005-A1-P02.pdf'
    LibPartSrc = 'RARC01/RARC01-TUS-XX-XX-M3-A-EF_37_17_15-001-P01.rfa'
    LibPart = 'RARC01-TUS-XX-XX-M3-A-EF_37_17_15-001-P01.rfa'
}

$Assignment2 = [PSCustomObject]@{
    Name = 'RARC02-TUS-XX-XX-SP-A-001-A1-P02'
    Spec = './SP/RARC02-TUS-XX-XX-SP-A-001-A1-P02.tex'
    HomeDir = './RARC02/'
    Archive = 'RARC02-TUS-XX-XX-IE-A-001-A1-P02.zip'
    Dwg1Src = 'RARC02/RARC02-A-001-A1-P02-.pdf'
    Dwg1 = 'RARC02-TUS-00-ZZ-DR-A-201-A1-P02.pdf'
    Dwg2Src = 'RARC02/RARC02-A-002-A1-P02-.pdf'
    Dwg2 = 'RARC02-TUS-00-ZZ-DR-A-202-A1-P02.pdf'
    Dwg3Src = 'RARC02/RARC02-A-003-A1-P02-.pdf'
    Dwg3 = 'RARC02-TUS-00-ZZ-DR-A-203-A1-P02.pdf'
    Dwg4Src = 'RARC02/RARC02-A-004-A1-P02-.pdf'
    Dwg4 = 'RARC02-TUS-00-ZZ-DR-A-204-A1-P02.pdf'
    Dwg5Src = 'RARC02/RARC02-A-005-A1-P02-.pdf'
    Dwg5 = 'RARC02-TUS-00-ZZ-DR-A-205-A1-P02.pdf'
    Dwg6Src = 'RARC02/RARC02-A-006-A1-P02-.pdf'
    Dwg6 = 'RARC02-TUS-00-ZZ-DR-A-206-A1-P02.pdf'
}



$Assignment3 = [PSCustomObject]@{
    Name = 'RARC03-TUS-XX-XX-SP-A-001-A1-P02'
    Spec = './SP/RARC03-TUS-XX-XX-SP-A-001-A1-P02.tex'
    HomeDir = './RARC03/'
    Archive = 'RARC03-TUS-00-ZZ-IE-A-001-A1-P02.zip'
    Dwg1Src = 'RARC03/RARC03-M-101-A1-.pdf'
    Dwg1 = 'RARC03-TUS-00-ZZ-DR-A-101-A1-P02.pdf'
    Dwg2Src = 'RARC03/RARC03-A-103-A1-.pdf'
    Dwg2 = 'RARC03-TUS-00-ZZ-DR-A-103-A1-P02.pdf'
    Dwg3Src = 'RARC03/RARC03-A-103-A1-.pdf'
    Dwg3 = 'RARC03-TUS-00-ZZ-DR-A-103-A1-P02.pdf'
}


$AssetLocation = './M3-DR/'
$A1Sheet = 'RARC01-TUS-XX-XX-DR-A-Zz_10-001-P01.rfa'
$A4Sheet = 'RARC01-TUS-XX-XX-DR-A-Zz_10-004-P01.rfa'

# Cleanout folders
Remove-Item ($Assignment1.HomeDir + '*.*')
Remove-Item ($Assignment2.HomeDir + '*.*')
Remove-Item ($Assignment3.HomeDir + '*.*')
Write-Host 'HomeDir Cleanout'

# Copy Items to Pack Folders

Copy-Item ($AssetLocation + $A1Sheet) ($Assignment1.HomeDir + $A1Sheet) -Force
Copy-Item ($AssetLocation + $A1Sheet) ($Assignment2.HomeDir + $A1Sheet) -Force
Copy-Item ($AssetLocation + $A1Sheet) ($Assignment3.HomeDir + $A1Sheet) -Force
Copy-Item ($AssetLocation + $A4Sheet) ($Assignment1.HomeDir + $A4Sheet) -Force
Copy-Item ($AssetLocation + $A4Sheet) ($Assignment2.HomeDir + $A4Sheet) -Force
Copy-Item ($AssetLocation + $A4Sheet) ($Assignment3.HomeDir + $A4Sheet) -Force
Write-Host 'A1 Sheet Copied to Packs'

Copy-Item ($AssetLocation + $Assignment1.Dwg1Src) ($Assignment1.HomeDir + $Assignment1.Dwg1) -Force
Copy-Item ($AssetLocation + $Assignment1.Dwg2Src) ($Assignment1.HomeDir + $Assignment1.Dwg2) -Force
Copy-Item ($AssetLocation + $Assignment1.Dwg3Src) ($Assignment1.HomeDir + $Assignment1.Dwg3) -Force
Copy-Item ($AssetLocation + $Assignment1.Dwg4Src) ($Assignment1.HomeDir + $Assignment1.Dwg4) -Force
Copy-Item ($AssetLocation + $Assignment1.Dwg5Src) ($Assignment1.HomeDir + $Assignment1.Dwg5) -Force
Copy-Item ($AssetLocation + $Assignment1.LibPartSrc) ($Assignment1.HomeDir + $Assignment1.LibPart) -Force
Write-Host 'RARC01 Drawings Copied'

Copy-Item ($AssetLocation + $Assignment2.Dwg1Src) ($Assignment2.HomeDir + $Assignment2.Dwg1) -Force
Copy-Item ($AssetLocation + $Assignment2.Dwg2Src) ($Assignment2.HomeDir + $Assignment2.Dwg2) -Force
Copy-Item ($AssetLocation + $Assignment2.Dwg3Src) ($Assignment2.HomeDir + $Assignment2.Dwg3) -Force
Copy-Item ($AssetLocation + $Assignment2.Dwg4Src) ($Assignment2.HomeDir + $Assignment2.Dwg4) -Force
Copy-Item ($AssetLocation + $Assignment2.Dwg5Src) ($Assignment2.HomeDir + $Assignment2.Dwg5) -Force
Copy-Item ($AssetLocation + $Assignment2.Dwg6Src) ($Assignment2.HomeDir + $Assignment2.Dwg6) -Force
Write-Host 'RARC02 Drawings Copied'


#Copy-Item ($AssetLocation + $Assignment3.Dwg1Out) ($Assignment3.HomeDir + $Assignment3.Dwg1) -Force
#Copy-Item ($AssetLocation + $Assignment3.Dwg2Out) ($Assignment3.HomeDir + $Assignment3.Dwg2) -Force
#Copy-Item ($AssetLocation + $Assignment3.Dwg3Out) ($Assignment3.HomeDir + $Assignment3.Dwg3) -Force
Write-Host 'RARC03 Drawings Copied'



# Compile Latex Files


pdflatex $Assignment1.Spec
Remove-Item ($Assignment1.Name + '.aux')
Remove-Item ($Assignment1.Name + '.log')
Remove-Item ($Assignment1.Name + '.out')
Move-Item -Path ($Assignment1.Name + '.pdf') -Destination ($Assignment1.HomeDir + $Assignment1.Name + '.pdf') -Force

pdflatex $Assignment2.Spec
Remove-Item ($Assignment2.Name + '.aux')
Remove-Item ($Assignment2.Name + '.log')
Remove-Item ($Assignment2.Name + '.out')
Move-Item -Path ($Assignment2.Name + '.pdf') -Destination ($Assignment2.HomeDir + $Assignment2.Name + '.pdf') -Force


pdflatex $Assignment3.Spec
Remove-Item ($Assignment3.Name + '.aux')
Remove-Item ($Assignment3.Name + '.log')
Remove-Item ($Assignment3.Name + '.out')
Move-Item -Path ($Assignment3.Name + '.pdf') -Destination ($Assignment3.HomeDir + $Assignment3.Name + '.pdf') -Force


Remove-Item $Assignment1.Archive
Remove-Item $Assignment2.Archive
Remove-Item $Assignment3.Archive


Compress-Archive $Assignment1.HomeDir $Assignment1.Archive -Update
Compress-Archive $Assignment2.HomeDir $Assignment2.Archive -Update
Compress-Archive $Assignment3.HomeDir $Assignment3.Archive -Update



Write-Host -NoNewLine 'Script Complete: Press any key to continue...';
$null = $Host.UI.RawUI.ReadKey('NoEcho,IncludeKeyDown');