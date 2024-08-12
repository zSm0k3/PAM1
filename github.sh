#!/bin/sh

#Altere as variáveis abaixo de acordo com a sua necessidade
#na variável repositório, prefira a url do repositório baseada em https para nao termos que configurar SSH
export name='zSm0k3'
export email="thexof02@gmail.com"
export repositorio="https://github.com/zSm0k3/PAM1.git";

#Daqui pra baixo mexa somente se for realmente necessário ou se souber o que está fazendo :P

export branch_name="aula-$(date +%Y%m%d)"

rm -Rf .git

#add linux, mac and windows folders to gitignore
echo "" >> .gitignore
echo "#ignoring windows, macos and linux folders" >> .gitignore
echo "windows" >> .gitignore
echo "macos" >> .gitignore
echo "linux" >> .gitignore

git init
git remote add origin $repositorio
git checkout -b $branch_name

git config --global user.name $name
git config --global user.email $email

git add .gitignore
git commit -m "added ignored files" .gitignore

git add .

git commit -am "branch com o código da aula do dia $(date)"

git push origin $branch_name