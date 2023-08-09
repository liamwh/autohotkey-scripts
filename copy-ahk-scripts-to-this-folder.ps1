[CmdletBinding()]
param(
    # Get the parent directory as default value
    [string]$sourceFolder = (Get-Item ..).FullName
)

# Check if source folder exists
if (-Not (Test-Path -Path $sourceFolder -PathType Container)) {
    Write-Error "Source folder $sourceFolder does not exist."
    return
}

# Get all .ahk files in the source directory
$files = Get-ChildItem -Path $sourceFolder -Filter *.ahk

if ($files.Count -eq 0) {
    Write-Verbose "No .ahk files found in the source folder."
    return
}

# Copy each file to the current directory, overwriting if it exists
foreach ($file in $files) {
    Write-Verbose "Copying file $($file.Name) from $sourceFolder to current directory."
    try {
        Copy-Item -Path $file.FullName -Destination .\ -Force
        Write-Verbose "Successfully copied $($file.Name)."
    } catch {
        Write-Error "Failed to copy $($file.Name): $_"
    }
}
