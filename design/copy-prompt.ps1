param([Parameter(Mandatory=$true)][string]$Id)
$md = Get-Content "$PSScriptRoot\stitch-prompts.md" -Raw
$pre = [regex]::Match($md, '(?s)## Global preamble\s*(.+?)\s*## Batch 1').Groups[1].Value.Trim()
$line = ($md -split "`r?`n" | Where-Object { $_ -like "$Id *" } | Select-Object -First 1)
if (-not $line) { Write-Error "No prompt found for $Id"; exit 1 }
$extra = "Rules learned in review: Add only the elements listed. Do not add banners, progress trackers, extra cards or extra navigation. Use exactly the status wording given; never invent status text. Never use the word booked for a help request. Never tell patients to make a phone call. Body text at least 16px, buttons at least 48px high, descriptions never truncated, strong text contrast. Patient bottom navigation has only Home, Visits, Profile."
("$pre`n`n$extra`n`nScreen: " + $line.Substring($Id.Length).Trim()) | Set-Clipboard
Write-Host "Copied prompt for $Id. Paste it into Stitch."
