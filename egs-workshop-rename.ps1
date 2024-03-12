# Retrieve and print current directory
$dir = [IO.Directory]::GetCurrentDirectory()
Write-Output 'Current directory: ' $dir

# Retrieve all the directories in the current directory
Get-ChildItem -Path $dir -Directory | 

     # Rename each directory found based on the name of the .epb file found inside it
    ForEach-Object {

        # Retrieve the name of the .epb file in the directory
        $epb = Get-ChildItem -Path $_.FullName -Filter *.epb

        # If an .epb file exists, rename the directory to the name of the .epb file
        if ($epb) {
            Write-Output 'Renaming ' $_.Name ' to ' $epb.BaseName
            $newName = $epb.BaseName
            $_ | Rename-Item -NewName $newName
        } 
        # Else print a message that no .epb file was found
        else {
            Write-Output 'No .epb file found in ' $_.Name
        }
    }
# Print a message that the rename operation is complete
Write-Output 'Rename operation complete.'

# Pause the script to allow the user to read the output
Pause