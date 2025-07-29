git status
git add .
$mensagem = Read-Host "Digite a mensagem do commit"
git commit -m "$mensagem"
git pull origin main
git push origin main