param(
    # Get the parent directory as default value
    [string]$sourceFolder = (Get-Item ..).FullName
)

# Get all .ahk files in the source directory
$files = Get-ChildItem -Path $sourceFolder -Filter *.ahk

# Copy each file to the current directory
foreach ($file in $files) {
    Copy-Item -Path $file.FullName -Destination .\
}
