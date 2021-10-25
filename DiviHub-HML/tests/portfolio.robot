***Settings***

Resource    ../resources/base.robot

# Executa o KW antes de cada testcase
Test Setup      Open Session
# Executa a KW depois de cada testcase
Test Teardown   Close Session

***Test Cases***
Acessar a tela do portfólio
    Get Login
    Click Text                          PORTFÓLIO
    Wait Until Page Contains            Meu portfólio

Consultar os contratos do projeto METAFORANDO
    Get Login
    Click Text                          PORTFÓLIO
    Wait Until Page Contains            Meu portfólio
    Swipe                               601    1520    612    891
    Click Text                          MEUS CONTRATOS
    Wait Until Page Contains            Operação Metaforando

# Consultar os contratos do projeto PODCAST
#     Get Login
#     Click Text                          PORTFÓLIO
#     Wait Until Page Contains            Meu portfólio
#     Swipe                               531    1439    531    514
#     Sleep                               1
#     Swipe                               555    1439    549    482
#     Click Text                          MEUS CONTRATOS
#     Wait Until Page Contains            The Last Podcast 

Consultar os contratos do projeto Call of Duty
    Get Login
    Click Text                          PORTFÓLIO
    Wait Until Page Contains            Meu portfólio
    Swipe                               531    1439    531    614
    Sleep                               1
    Swipe                               555    1439    249    602
    Click Text                          MEUS CONTRATOS
    Wait Until Page Contains            Call Of Duty

