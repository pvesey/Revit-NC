$Assignment1 = [PSCustomObject]@{
    Name = 'RARC01-LIT-00-ZZ-SP-A-001-A1-P02'
    Spec = './Assignments/RARC01-LIT-00-ZZ-SP-A-001-A1-P02.tex'
    HomeDir = './RARC01/'
    Archive = 'RARC01-LIT-00-ZZ-IE-A-001-A1-P02.zip'
    Dwg1Out = 'RARC01/RARC01-A-001-A1-.pdf'
    Dwg1 = 'RARC01-LIT-00-ZZ-DR-A-001-A1-P02.pdf'
    Dwg2Out = 'RARC01/RARC01-A-002-A1-.pdf'
    Dwg2 = 'RARC01-LIT-00-ZZ-DR-A-002-A1-P02.pdf'
    Dwg3Out = 'RARC01/RARC01-A-003-A1-.pdf'
    Dwg3 = 'RARC01-LIT-00-ZZ-DR-A-003-A1-P02.pdf'
    Dwg4Out = 'RARC01/RARC01-A-004-A1-.pdf'
    Dwg4 = 'RARC01-LIT-00-ZZ-DR-A-004-A1-P02.pdf'
    Dwg5Out = 'RARC01/RARC01-A-005-A1-.pdf'
    Dwg5 = 'RARC01-LIT-00-ZZ-DR-A-005-A1-P02.pdf'
}

$Assignment2 = [PSCustomObject]@{
    Name = 'RARC02-LIT-00-ZZ-SP-A-001-A1-P02'
    Spec = './Assignments/RARC02-LIT-00-ZZ-SP-A-001-A1-P02.tex'
    HomeDir = './RARC02/'
    Archive = 'RARC02-LIT-00-ZZ-IE-A-001-A1-P02.zip'
    Dwg1Out = 'RARC02/RARC02-A-201-A1-.pdf'
    Dwg1 = 'RARC02-LIT-00-ZZ-DR-A-201-A1-P02.pdf'
    Dwg2Out = 'RARC02/RARC02-A-202-A1-.pdf'
    Dwg2 = 'RARC02-LIT-00-ZZ-DR-A-202-A1-P02.pdf'
    Dwg3Out = 'RARC02/RARC02-A-203-A1-.pdf'
    Dwg3 = 'RARC02-LIT-00-ZZ-DR-A-203-A1-P02.pdf'
    Dwg4Out = 'RARC02/RARC02-A-204-A1-.pdf'
    Dwg4 = 'RARC02-LIT-00-ZZ-DR-A-204-A1-P02.pdf'
    Dwg5Out = 'RARC02/RARC02-A-205-A1-.pdf'
    Dwg5 = 'RARC02-LIT-00-ZZ-DR-A-205-A1-P02.pdf'
    Dwg6Out = 'RARC02/RARC02-A-206-A1-.pdf'
    Dwg6 = 'RARC02-LIT-00-ZZ-DR-A-206-A1-P02.pdf'
}



$Assignment3 = [PSCustomObject]@{
    Name = 'RARC03-LIT-00-ZZ-SP-A-001-A1-P02'
    Spec = './Assignments/RARC03-LIT-00-ZZ-SP-A-001-A1-P02.tex'
    HomeDir = './RARC03/'
    Archive = 'RARC03-LIT-00-ZZ-IE-A-001-A1-P02.zip'
    Dwg1Out = 'RARC03/RARC03-M-101-A1-.pdf'
    Dwg1 = 'RARC03-LIT-00-ZZ-DR-A-101-A1-P02.pdf'
    Dwg2Out = 'RARC03/RARC03-A-103-A1-.pdf'
    Dwg2 = 'RARC03-LIT-00-ZZ-DR-A-103-A1-P02.pdf'
    Dwg3Out = 'RARC03/RARC03-A-103-A1-.pdf'
    Dwg3 = 'RARC03-LIT-00-ZZ-DR-A-103-A1-P02.pdf'
}


$AssetLocation = './Assets/'
$Sheet = 'LIT-A1-Metric-Arch.rfa'

# Cleanout folders
Remove-Item ($Assignment1.HomeDir + '*.*')
Remove-Item ($Assignment2.HomeDir + '*.*')
Remove-Item ($Assignment3.HomeDir + '*.*')
Write-Host 'HomeDir Cleanout'

# Copy Items to Pack Folders

Copy-Item ($AssetLocation + $Sheet) ($Assignment1.HomeDir + $Sheet) -Force
Copy-Item ($AssetLocation + $Sheet) ($Assignment2.HomeDir + $Sheet) -Force
Copy-Item ($AssetLocation + $Sheet) ($Assignment3.HomeDir + $Sheet) -Force
Copy-Item ($AssetLocation + $Sheet) ($Assignment4.HomeDir + $Sheet) -Force
Write-Host 'A1 Sheet Copied to Packs'

Copy-Item ($AssetLocation + $Assignment1.Dwg1Out) ($Assignment1.HomeDir + $Assignment1.Dwg1) -Force
Copy-Item ($AssetLocation + $Assignment1.Dwg2Out) ($Assignment1.HomeDir + $Assignment1.Dwg2) -Force
Copy-Item ($AssetLocation + $Assignment1.Dwg3Out) ($Assignment1.HomeDir + $Assignment1.Dwg3) -Force
Copy-Item ($AssetLocation + $Assignment1.Dwg4Out) ($Assignment1.HomeDir + $Assignment1.Dwg4) -Force
Copy-Item ($AssetLocation + $Assignment1.Dwg5Out) ($Assignment1.HomeDir + $Assignment1.Dwg5) -Force
Write-Host 'RARC01 Drawings Copied'

Copy-Item ($AssetLocation + $Assignment2.Dwg1Out) ($Assignment2.HomeDir + $Assignment2.Dwg1) -Force
Copy-Item ($AssetLocation + $Assignment2.Dwg2Out) ($Assignment2.HomeDir + $Assignment2.Dwg2) -Force
Copy-Item ($AssetLocation + $Assignment2.Dwg3Out) ($Assignment2.HomeDir + $Assignment2.Dwg3) -Force
Copy-Item ($AssetLocation + $Assignment2.Dwg4Out) ($Assignment2.HomeDir + $Assignment2.Dwg4) -Force
Copy-Item ($AssetLocation + $Assignment2.Dwg5Out) ($Assignment2.HomeDir + $Assignment2.Dwg5) -Force
Copy-Item ($AssetLocation + $Assignment2.Dwg6Out) ($Assignment2.HomeDir + $Assignment2.Dwg6) -Force
Write-Host 'RARC02 Drawings Copied'


Copy-Item ($AssetLocation + $Assignment3.Dwg1Out) ($Assignment3.HomeDir + $Assignment3.Dwg1) -Force
Copy-Item ($AssetLocation + $Assignment3.Dwg2Out) ($Assignment3.HomeDir + $Assignment3.Dwg2) -Force
Copy-Item ($AssetLocation + $Assignment3.Dwg3Out) ($Assignment3.HomeDir + $Assignment3.Dwg3) -Force
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