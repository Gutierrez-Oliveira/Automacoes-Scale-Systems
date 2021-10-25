***Settings***

Resource    ../resources/base.robot

# Executa o KW antes de cada testcase
Test Setup      Open Session
# Executa a KW depois de cada testcase
Test Teardown   Close Session

***Test Cases***
Consultar Termos e condições de uso
    Get Login

    Click Text                          CONFIG.
    Wait Until Page Contains            Configurações

    Click Text                          Legal
    Sleep                               2
    Click Text                          Termos e condições de uso
    Wait Until Page Contains            TERMOS E CONDIÇÕES

Consultar Política de privacidade
    Get Login

    Click Text                          CONFIG.
    Wait Until Page Contains            Configurações

    Click Text                          Legal
    Sleep                               2
    Click Text                          Política de privacidade
                       
    Wait Until Page Contains            POLÍTICA DE PRIVACIDADE

Consultar Aviso de risco
    Get Login

    Click Text                          CONFIG.
    Wait Until Page Contains            Configurações

    Click Text                          Legal
    Wait Until Page Contains            Legal
    Sleep                               2
    Click Text                          Aviso de risco
    Wait Until Page Contains            AVISO DE RISCO
