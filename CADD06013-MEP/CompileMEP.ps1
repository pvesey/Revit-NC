$Assignment1 = [PSCustomObject]@{
    Name = 'RMEP01-LIT-00-ZZ-SP-E-001-A1-P02'
    Spec = './Assignments/RMEP01-LIT-00-ZZ-SP-E-001-A1-P02.tex'
    HomeDir = './RMEP01/'
    Archive = 'RMEP01-LIT-00-ZZ-IE-E-001-A1-P02.zip'
    Dwg1Out = 'RMEP01/RMEP01-E-101-A1-.pdf'
    Dwg1 = 'RMEP01-LIT-00-ZZ-DR-E-101-A1-P02.pdf'
}

$Assignment2 = [PSCustomObject]@{
    Name = 'RMEP02-LIT-00-ZZ-SP-H-001-A1-P02'
    Spec = './Assignments/RMEP02-LIT-00-ZZ-SP-H-001-A1-P02.tex'
    HomeDir = './RMEP02/'
    Archive = 'RMEP02-LIT-00-ZZ-IE-H-001-A1-P02.zip'
    Dwg1Out = 'RMEP02/RMEP02-H-101-A1-.pdf'
    Dwg1 = 'RMEP02-LIT-00-ZZ-DR-H-101-A1-P02.pdf'
    Dwg2Out = 'RMEP02/RMEP02-H-102-A1-.pdf'
    Dwg2 = 'RMEP02-LIT-00-ZZ-DR-H-102-A1-P02.pdf'
    Dwg3Out = 'RMEP02/RMEP02-H-103-A1-.pdf'
    Dwg3 = 'RMEP02-LIT-00-ZZ-DR-H-103-A1-P02.pdf'
    Dwg4Out = 'RMEP02/RMEP02-H-104-A1-.pdf'
    Dwg4 = 'RMEP02-LIT-00-ZZ-DR-H-104-A1-P02.pdf'

}

$Assignment3 = [PSCustomObject]@{
    Name = 'RMEP03-LIT-00-ZZ-SP-M-001-A1-P02'
    Spec = './Assignments/RMEP03-LIT-00-ZZ-SP-M-001-A1-P02.tex'
    HomeDir = './RMEP03/'
    Archive = 'RMEP03-LIT-00-ZZ-IE-M-001-A1-P02.zip'
    Dwg1Out = 'RMEP03/RMEP03-M-101-A1-.pdf'
    Dwg1 = 'RMEP03-LIT-00-ZZ-DR-M-101-A1-P02.pdf'
    Dwg2Out = 'RMEP03/RMEP03-M-102-A1-.pdf'
    Dwg2 = 'RMEP03-LIT-00-ZZ-DR-M-102-A1-P02.pdf'
    Dwg3Out = 'RMEP03/RMEP03-M-103-A1-.pdf'
    Dwg3 = 'RMEP03-LIT-00-ZZ-DR-M-103-A1-P02.pdf'
}

$Assignment4 = [PSCustomObject]@{
    Name = 'RMEP04-LIT-00-ZZ-SP-Y-001-A1-P02'
    Spec = './Assignments/RMEP04-LIT-00-ZZ-SP-Y-001-A1-P02.tex'
    HomeDir = './RMEP04/'
    Archive = 'RMEP04-LIT-00-ZZ-IE-Y-001-A1-P02.zip'
    Dwg1Out = 'RMEP04/RMEP01-Y-101-A1-.pdf'
    Dwg1 = 'RMEP04-LIT-00-ZZ-DR-Y-101-A1-P02.pdf'
}


$AssetLocation = './Assets/'
$Sheet = 'LIT-A1-Metric-MEP.rfa'
$ArchModel = 'RMEP01-LIT-00-ZZ-M3-A-001-A1-P02.rvt'

# Cleanout folders
Remove-Item ($Assignment1.HomeDir + '*.*')
Remove-Item ($Assignment2.HomeDir + '*.*')
Remove-Item ($Assignment3.HomeDir + '*.*')
Remove-Item ($Assignment4.HomeDir + '*.*')
Write-Host 'HomeDir Cleanout'
Write-Progress -Activity "Compile in Progress" -Status "10% Complete:" -PercentComplete 10



# Copy Items to Pack Folders

Copy-Item ($AssetLocation + $Sheet) ($Assignment1.HomeDir + $Sheet) -Force
Copy-Item ($AssetLocation + $Sheet) ($Assignment2.HomeDir + $Sheet) -Force
Copy-Item ($AssetLocation + $Sheet) ($Assignment3.HomeDir + $Sheet) -Force
Copy-Item ($AssetLocation + $Sheet) ($Assignment4.HomeDir + $Sheet) -Force
Write-Host 'A1 Sheet Copied to Packs'
Write-Progress -Activity "Compile in Progress" -Status "15% Complete:" -PercentComplete 15



Copy-Item ($AssetLocation + $ArchModel) ($Assignment1.HomeDir + $ArchModel) -Force
Copy-Item ($AssetLocation + $ArchModel) ($Assignment2.HomeDir + $ArchModel) -Force
Copy-Item ($AssetLocation + $ArchModel) ($Assignment3.HomeDir + $ArchModel) -Force
Copy-Item ($AssetLocation + $ArchModel) ($Assignment4.HomeDir + $ArchModel) -Force
Write-Host 'Arch Model Copied to Packs'
Write-Progress -Activity "Compile in Progress" -Status "20% Complete:" -PercentComplete 20



Copy-Item ($AssetLocation + $Assignment1.Dwg1Out) ($Assignment1.HomeDir + $Assignment1.Dwg1) -Force
Write-Host 'RMEP01 Drawings Copied'
Write-Progress -Activity "Compile in Progress" -Status "30% Complete:" -PercentComplete 30


Copy-Item ($AssetLocation + $Assignment2.Dwg1Out) ($Assignment2.HomeDir + $Assignment2.Dwg1) -Force
Copy-Item ($AssetLocation + $Assignment2.Dwg2Out) ($Assignment2.HomeDir + $Assignment2.Dwg2) -Force
Copy-Item ($AssetLocation + $Assignment2.Dwg3Out) ($Assignment2.HomeDir + $Assignment2.Dwg3) -Force
Copy-Item ($AssetLocation + $Assignment2.Dwg4Out) ($Assignment2.HomeDir + $Assignment2.Dwg4) -Force
Write-Host 'RMEP02 Drawings Copied'
Write-Progress -Activity "Compile in Progress" -Status "35% Complete:" -PercentComplete 35


Copy-Item ($AssetLocation + $Assignment3.Dwg1Out) ($Assignment3.HomeDir + $Assignment3.Dwg1) -Force
Copy-Item ($AssetLocation + $Assignment3.Dwg2Out) ($Assignment3.HomeDir + $Assignment3.Dwg2) -Force
Copy-Item ($AssetLocation + $Assignment3.Dwg3Out) ($Assignment3.HomeDir + $Assignment3.Dwg3) -Force
Write-Host 'RMEP03 Drawings Copied'
Write-Progress -Activity "Compile in Progress" -Status "40% Complete:" -PercentComplete 40



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


pdflatex $Assignment4.Spec
Remove-Item ($Assignment4.Name + '.aux')
Remove-Item ($Assignment4.Name + '.log')
Remove-Item ($Assignment4.Name + '.out')
Move-Item -Path ($Assignment4.Name + '.pdf') -Destination ($Assignment4.HomeDir + $Assignment4.Name + '.pdf') -Force




Remove-Item $Assignment1.Archive
Remove-Item $Assignment2.Archive
Remove-Item $Assignment3.Archive
Remove-Item $Assignment4.Archive




Compress-Archive $Assignment1.HomeDir $Assignment1.Archive -Update
Compress-Archive $Assignment2.HomeDir $Assignment2.Archive -Update
Compress-Archive $Assignment3.HomeDir $Assignment3.Archive -Update
Compress-Archive $Assignment4.HomeDir $Assignment4.Archive -Update


Write-Progress -Activity "Compile in Progress" -Status "100% Complete:" -PercentComplete 100
Write-Output -NoNewLine 'Press any key to continue...';
$null = $Host.UI.RawUI.ReadKey('NoEcho,IncludeKeyDown');