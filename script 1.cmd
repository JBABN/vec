@ set "gitdir=%~dp0"
@ set "gitdir=%gitdir:~0,-5%PortableGit\bin"
@ set "PATH=%PATH%;%gitdir%"
@ echo Crear un repo, local y online
@ echo Requiere que tengas una cuenta ya hecha en github

@ set /p _un=username?
@ set /p _rp=repo name?
@ set /p _mail=mail?

git init
git config --local user.name "%_un%"
git config --local user.email "%_mail%"
@echo.
@echo enter para loguearse
@echo.
@pause 1>nul 2>&1
gh auth login
@echo.
@echo A LO SIGUIENTE, RESPONDER [NO, NO, SÖ]
@echo.
gh repo create "%_rp%"
git remote remove origin
git remote add repo-web https://github.com/%_un%/%_rp%.git
@# echo %_rn% > "repo name.txt" -- éso no hace falta creo. 2>&1 1>nul
@ echo asd > asd.txt
git add .
git commit -a -m "asd"
git push -f repo-web master
del asd.txt
@echo finished
@echo.
@echo Ahora and  y activ  la página. En github, en la repo de la p gina, busc  "settings > pages > source > select branch > master > save"
@echo Hasta que no hagas eso, no va a andar
pause

