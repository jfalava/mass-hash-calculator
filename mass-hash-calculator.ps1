$folderPath = "C:\Users\jfalava\Desktop"
$outputFilePath = "C:\Users\jfalava\Desktop\hash.txt"

$mcdfFiles = Get-ChildItem -Path $folderPath -Filter "*.mcdf"

$hashes = foreach ($file in $mcdfFiles) {
    $hash = Get-FileHash -Path $file.FullName -Algorithm SHA256
    [PSCustomObject]@{
        FileName = $file.Name
        Hash = $hash.Hash
    }
}

$hashes | Export-Csv -Path $outputFilePath -NoTypeInformation -Delimiter "`t" -Encoding UTF8
