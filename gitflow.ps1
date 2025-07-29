git status
git add .
$mensagem = Read-Host "Digite a mensagem do commit"
git commit -m "$mensagem"
git pull origin main
git push origin main

# git status && git add . && git commit -m "Mensagem do commit" && git pull origin main && git push origin main (Git Bash)
# git status; git add .; git commit -m "Mensagem do commit"; git pull origin main; git push origin main (Power Shell)