$folderPath = "path\to\folder"
$outputFilePath = "path\to\txt\file\hash.txt"

$scanFiles = Get-ChildItem -Path $folderPath -Filter "*.extension"

$hashes = foreach ($file in $scanFiles) {
    $hash = Get-FileHash -Path $file.FullName -Algorithm SHA256
    [PSCustomObject]@{
        FileName = $file.Name
        Hash = $hash.Hash
    }
}

$hashes | Export-Csv -Path $outputFilePath -NoTypeInformation -Delimiter "`t" -Encoding UTF8
