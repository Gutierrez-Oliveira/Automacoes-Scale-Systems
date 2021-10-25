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

    Click Text                  Música
    Click Text                  Selecionar
    Wait Until Page Contains    Invista nos novos hits!

Filtrar projetos na categoria de Games
    Get Login

    Click Text                  Filtrar
    Wait until Page Contains    Selecione uma opção

    Click Text                  Games
    Click Text                  Selecionar
    Wait Until Page Contains    O novo game está chegando!

Filtrar projetos na categoria de Arte
    Get Login

    Click Text                  Filtrar
    Wait until Page Contains    Selecione uma opção

    Click Text                  Arte
    Click Text                  Selecionar
    Wait Until Page Contains    Arte Digital

Filtrar projetos na categoria de Eventos
    Get Login

    Click Text                  Filtrar
    Wait until Page Contains    Selecione uma opção

    Click Text                  Eventos
    Click Text                  Selecionar
    Wait Until Page Contains    Quer ser sócio do MegaGig?

iltrar projetos sem filtro
    Get Login

    Click Text                  Filtrar
    Wait until Page Contains    Selecione uma opção

    Click Text                  Sem filtro
    Click Text                  Selecionar
    Wait Until Page Contains    O novo game está chegando!
