# Build index.html (single file for GitHub Pages / sharing) from src/index.html (the Claude artifact source).
# Fonts are embedded as base64 so the page needs no extra files.
$here = $PSScriptRoot
$t = [IO.File]::ReadAllText("$here\src\index.html", [Text.Encoding]::UTF8)
foreach ($f in Get-ChildItem "$here\src\fonts\*.woff2") {
  $b64 = [Convert]::ToBase64String([IO.File]::ReadAllBytes($f.FullName))
  $t = $t.Replace("url(""fonts/$($f.Name)"")", "url(""data:font/woff2;base64,$b64"")")
}
$t = $t.Replace('<meta name="claude:viewport-fit-sides" content="cover">', '')
$html = "<!doctype html>`n<html lang=""ko"">`n<head>`n<meta charset=""utf-8"">`n<meta name=""viewport"" content=""width=device-width,initial-scale=1"">`n</head>`n<body>`n" + $t + "`n</body>`n</html>`n"
[IO.File]::WriteAllText("$here\index.html", $html, (New-Object Text.UTF8Encoding $false))
"built index.html ({0:N0} KB)" -f ((Get-Item "$here\index.html").Length / 1KB)
