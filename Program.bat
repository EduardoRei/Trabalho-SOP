@echo off
title Trabalho SOP
cls
:menu
Color 0
Color e
cls


date /t

echo Computador: %computername%        Usuario: %username%
                   
echo            MENU TAREFAS
echo  ==================================
echo * 1. Esvaziar a Lixeira            * 
echo * 2. Acessar o Google              *
echo * 3. Painel de Controle            *
echo * 4. Digitacao                     *
echo * 5. Sair                          * 
echo  ==================================

set /p opcao= Escolha uma opcao: 
echo ------------------------------
if %opcao% equ 1 goto opcao1
if %opcao% equ 2 goto opcao2
if %opcao% equ 3 goto opcao3
if %opcao% equ 4 goto opcao4
if %opcao% equ 5 goto opcao5
if %opcao% GEQ 6 goto opcao6

:opcao1
cls
rd /S /Q c:\$Recycle.bin
echo ==================================
echo *      Lixeira Esvaziada          *
echo ==================================
pause
goto menu

:opcao2
cls
echo ==================================
echo *      Acessando o Google         *
echo ==================================
start chrome google.com
pause
goto menu

:opcao4
cls
echo ==================================
echo *      Digitacao	               *
echo ==================================
set /p digitacao= Digite um comando:
if %digitacao% equ --version goto version
if %digitacao% equ --help goto help 
if %digitacao% neq "" echo opcao invalida!
pause
goto menu

:help
cls
echo .
echo ----------------------------------------------------------------------------------------------------------------
echo Esvaziar lixeira - Acessado atraves do menu pelo numero 1. Ele limpa a lixeira do computador.
echo Acessar o google - Acessado atraves do menu pelo numero 2. Ele abre o navegador.
echo Painel de Controle - Acessado atraves do menu pelo numero 3. Ele abre o painel de controle do sistema.
echo Digitacao - Acessado atraves do menu pelo numero 4. Abre uma nova aba que permite digitar os comandos do programa.
echo --Version - Diz a versão do programa
echo --Help - Exibe os comandos do programa
echo Sair - Acessado atraves do menu pelo numero 5. Fecha o programa
echo ----------------------------------------------------------------------------------------------------------------
echo .
pause
goto menu

:version
cls
echo ==================================
echo * O programa esta na versão 1.3.0 *
echo ==================================
pause
goto menu

:opcao3
cls
control.exe
pause
goto menu

:opcao5
cls
exit

:opcao6
echo ==============================================
echo * Opcao Invalida! Escolha outra opcao do menu *
echo ==============================================
pause
goto menu