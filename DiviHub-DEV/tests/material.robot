***Settings***

Resource    ../resources/base.robot

# Executa o KW antes de cada testcase
Test Setup      Open Session
# Executa a KW depois de cada testcase
Test Teardown   Close Session

***Test Cases***
Consultar material didático
    Get Login

    Click Text                      CONFIG.
    Wait Until Page Contains        Configurações

    Click Text                      Material didático
    Wait Until Page Contains        MATERIAL DIDÁTICO DO INVESTIDOR

