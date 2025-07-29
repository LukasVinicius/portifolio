# Exibe status atual
git status
git add .

# Verifica se há arquivos prontos para commit
$changes = git diff --cached --name-only

if ($changes) {
    # Solicita mensagem de commit
    $mensagem = Read-Host "Digite a mensagem do commit"
    git commit -m "$mensagem"

    # Escolha da branch com padrão para 'main'
    $branch = Read-Host "Digite o nome da branch (pressione Enter para usar 'main')"
    if (-not $branch) { $branch = "main" }

    # Executa git pull
    git pull origin $branch

    # Confirma se o push deve ser feito
    $confirm = Read-Host "Deseja fazer o push para '$branch'? (s/n)"
    if ($confirm -eq "s") {
        git push origin $branch
        Write-Host "Push realizado com sucesso para a branch '$branch'." -ForegroundColor Green
    } else {
        Write-Host "Push cancelado." -ForegroundColor Red
    }
} else {
    Write-Host "Nenhuma mudança adicionada. Nada a commitar." -ForegroundColor Yellow
}

# Referência:
# git status && git add . && git commit -m "Mensagem do commit" && git pull origin main && git push origin main (Git Bash)
# git status; git add .; git commit -m "Mensagem do commit"; git pull origin main; git push origin main (Power Shell)
