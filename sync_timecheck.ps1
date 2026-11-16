# Desktop\HOW_Service_app\_netlify_deploy -> timecheck\ (run build_netlify.ps1 there first)
$src = "C:\Users\ije07\Desktop\HOW_Service_app\_netlify_deploy"
$dst = Join-Path $PSScriptRoot 'timecheck'
if (Test-Path $dst) { Remove-Item $dst -Recurse -Force }
New-Item -ItemType Directory -Force $dst | Out-Null
Copy-Item "$src\*" $dst -Recurse -Force
Remove-Item (Join-Path $dst '_headers') -ErrorAction SilentlyContinue   # Netlify-only
"synced timecheck"
