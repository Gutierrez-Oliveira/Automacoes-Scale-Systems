***Settings***

Resource    ../resources/base.robot

# Executa o KW antes de cada testcase
Test Setup      Open Session
# Executa a KW depois de cada testcase
Test Teardown   Close Session

***Test Cases***
Acessar a tela do portfólio
    Get Login
    Click Text                          MEUS DIVIS
    Wait Until Page Contains            Meus DIVIs

Consultar os contratos do projeto MUSIC
    Get Login
    Click Text                          MEUS DIVIS
    Wait Until Page Contains            Meus DIVIs

    Swipe                               531    1439    531    614
    Sleep                               1
    Swipe                               531    1439    531    614
    Click Text                          MEUS CONTRATOS
    Wait Until Page Contains            MusicBlast

Consultar os contratos do projeto Street Bots
    Get Login
    Click Text                          MEUS DIVIS
    Wait Until Page Contains            Meus DIVIs

    Swipe                               531    1439    531    614
    Sleep                               1
    Swipe                               555    1439    549    602
    Sleep                               1
    Swipe                               555    1439    549    602
    Wait Until Page Contains            Meus DIVIs Street Bots (DEV):