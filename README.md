# mass-hash-calculator

PowerShell Script to calculate the hash of all files with an specific extension in a folder and returns it neatly into a `.txt` file.  

## How to run

Check out with the PowerShell command `Get-ExecutionPolicy` if you can execute PowerShell scripts. You can give yourself permissions to do so with the command `Set-ExecutionPolicy Unrestricted`.  

You can either execute the script via cli with `.\route\to\script\mass-hash-calculator.ps1` or by right clicking the file and selecting `Execute with Powershell`.  

Edit the script variables `$folderPath` and `$outputFilePath` to set up what folder do you want to get scanned and where do you want the `.txt` file with the output and the variable `$scanFiles` and edit `.extension` to the extension of the files you want to get hashed.
