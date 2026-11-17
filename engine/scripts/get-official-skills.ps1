# Copies Anthropic's free official skills (github.com/anthropics/skills) into your user skills folder
$tmp = Join-Path $env:TEMP "anthropic-skills"
if (Test-Path $tmp) { Remove-Item $tmp -Recurse -Force }
git clone --depth 1 https://github.com/anthropics/skills $tmp
$dst = Join-Path $env:USERPROFILE ".claude\skills"
New-Item -ItemType Directory -Force -Path $dst | Out-Null
$want = "pdf","docx","pptx","xlsx","webapp-testing","frontend-design","mcp-builder","skill-creator"
foreach ($s in $want) {
  $src = Get-ChildItem -Path $tmp -Recurse -Directory -Filter $s | Where-Object { Test-Path (Join-Path $_.FullName "SKILL.md") } | Select-Object -First 1
  if ($src) { Copy-Item $src.FullName (Join-Path $dst $s) -Recurse -Force; Write-Host "[OK] $s" } else { Write-Host "[MISS] $s" }
}
