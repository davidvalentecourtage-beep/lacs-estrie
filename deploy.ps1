# Script de déploiement automatique - Lacs Estrie
param([string]$source)
if($source) { Copy-Item $source -Destination "index.html" -Force }
git add index.html
git commit -m "Mise à jour app Lacs Estrie"
git push origin main
Write-Host "✅ Déployé sur Vercel !"
