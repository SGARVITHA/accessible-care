param([Parameter(Mandatory=$true)][string]$Id,[ValidateSet('mobile','desktop','tablet')][string]$Device='mobile')
$md = Get-Content "$PSScriptRoot\stitch-prompts.md" -Raw
$pre = [regex]::Match($md, '(?s)## Global preamble\s*(.+?)\s*## Batch 1').Groups[1].Value.Trim()
$line = ($md -split "`r?`n" | Where-Object { $_ -like "$Id *" } | Select-Object -First 1)
if (-not $line) { Write-Error "No prompt found for $Id"; exit 1 }
$extra = "Rules learned in review: Add only the elements listed. Do not add banners, progress trackers, extra cards or extra navigation. Use exactly the status wording given; never invent status text. Never use the word booked for a help request. Never tell patients to make a phone call. Text at least 16px, descriptions never truncated, strong text contrast."
switch ($Device) {
  'mobile'  { $dev = "Device: mobile phone, 390px wide. Buttons at least 48px high. Patient bottom navigation has only Home, Visits, Profile." }
  'desktop' { $dev = "Device: desktop web application, 1440px wide landscape layout for mouse and keyboard. Multi-column layout with a left navigation rail. Do NOT draw a phone frame, do NOT use a mobile layout, do NOT use a bottom tab bar." }
  'tablet'  { $dev = "Device: tablet in landscape, 1280x800, touch use, large text, large rows. Do NOT draw a phone frame, do NOT use a bottom tab bar, no hidden menus." }
}
("$pre`n`n$extra`n$dev`n`nScreen: " + $line.Substring($Id.Length).Trim()) | Set-Clipboard
Write-Host "Copied prompt for $Id ($Device). Paste it into Stitch."
