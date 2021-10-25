***Settings***

Resource    ../resources/base.robot

# Executa o KW antes de cada testcase
Test Setup      Open Session
# Executa a KW depois de cada testcase
Test Teardown   Close Session

***Test Cases***
Consultar meus boletos
    Get Login

    Click Text                          CONFIG.
    Wait Until Page Contains            Configurações

    Sleep                               2
    Click Text                          Meus boletos
    Wait Until Page Contains            Status do boleto:

    Wait Until Page Contains            Meus boletos
    Wait Until Page Contains            Vencido
                  