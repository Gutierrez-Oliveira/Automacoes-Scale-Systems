***Settings***

Resource    ../resources/base.robot

# Executa o KW antes de cada testcase
Test Setup      Open Session
# Executa a KW depois de cada testcase
Test Teardown   Close Session

***Test Cases***
Filtrar projetos na categoria de Música
    Get Login

    Click Text                  Filtrar
    Wait until Page Contains    Selecione uma opção

    Swipe                       544    1112    549    868
    Click Text                  Música
    Click Text                  Selecionar
    Wait Until Page Contains    Invista nos novos hits!

Filtrar projetos na categoria de Games
    Get Login

    Click Text                  Filtrar
    Wait until Page Contains    Selecione uma opção

    Swipe                       544    1112    549    868
    Click Text                  Games
    Click Text                  Selecionar
    Wait Until Page Contains    Games

Filtrar projetos na categoria de Animação
    Get Login

    Click Text                  Filtrar
    Wait until Page Contains    Selecione uma opção

    Click Text                  Animação
    Click Text                  Selecionar
    Wait Until Page Contains    Irmãos Piologo - saiba mais (DEV)

Filtrar projetos na categoria de Humor
    Get Login

    Click Text                  Filtrar
    Wait until Page Contains    Selecione uma opção

    Click Text                  Humor
    Click Text                  Selecionar
    Wait Until Page Contains    Castro Brothers - saiba mais (DEV)

Filtrar projetos na categoria de Esportes
    Get Login

    Click Text                  Filtrar
    Wait until Page Contains    Selecione uma opção

    Swipe                       544    1112    549    768
    Click Text                  Esportes
    Click Text                  Selecionar
    Wait Until Page Contains    Esportes

Filtrar projetos na categoria de Life Style
    Get Login

    Click Text                  Filtrar
    Wait until Page Contains    Selecione uma opção

    Swipe                       544    1112    549    768
    Click Text                  Life Style
    Click Text                  Selecionar
    Wait Until Page Contains    Life Style

Filtrar projetos na categoria de Eventos
    Get Login

    Click Text                  Filtrar
    Wait until Page Contains    Selecione uma opção

    Click Text                  Eventos
    Click Text                  Selecionar
    Wait Until Page Contains    Eventos

iltrar projetos sem filtro
    Get Login

    Click Text                  Filtrar
    Wait until Page Contains    Selecione uma opção

    Click Text                  Sem filtro
    Click Text                  Selecionar
    Wait Until Page Contains    Rato Borrachudo - saiba mais (DEV)