***Settings***

Resource    ../resources/base.robot

# Executa o KW antes de cada testcase
Test Setup      Open Session
# Executa a KW depois de cada testcase
Test Teardown   Close Session

***Test Cases***
Filtrar projetos na categoria de Life Style
    Get Login

    Click Text                  Filtrar
    Wait until Page Contains    Selecione uma opção

    Click Text                  Life Style
    Click Text                  Selecionar
    Wait Until Page Contains    Bem-vindo à nossa colônia

Filtrar projetos na categoria de Games
    Get Login

    Click Text                  Filtrar
    Wait until Page Contains    Selecione uma opção

    Click Text                  Games
    Click Text                  Selecionar
    Wait Until Page Contains    Vitor Santos - saiba mais!

Filtrar projetos na categoria de Arte
    Get Login

    Click Text                  Filtrar
    Wait until Page Contains    Selecione uma opção

    Click Text                  Arte
    Click Text                  Selecionar
    Wait Until Page Contains    arte

Filtrar projetos sem filtro
    Get Login

    Click Text                  Filtrar
    Wait until Page Contains    Selecione uma opção

    Click Text                  Sem filtro
    Click Text                  Selecionar
    Wait Until Page Contains    O novo game está chegando!
