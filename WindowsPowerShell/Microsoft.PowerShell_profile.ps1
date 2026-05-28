# Load Terminal Icons
Import-Module -Name "$HOME\Documents\PowerShell\Modules\Terminal-Icons"

# Load PSReadLine
Import-Module -Name "$HOME\Documents\PowerShell\Modules\PSReadLine"

try {
    [Console]::InputEncoding  = [System.Text.Encoding]::UTF8
    [Console]::OutputEncoding = [System.Text.Encoding]::UTF8
    $OutputEncoding = [System.Text.UTF8Encoding]::new($false)
    chcp 65001 > $null
} catch {}

Clear-Host

# Verify fastfetch exists and execute with absolute native path formatting
if (Get-Command fastfetch -ErrorAction SilentlyContinue) {
    & fastfetch -c "C:\Users\Farhan\.config\fastfetch\config.jsonc"
}