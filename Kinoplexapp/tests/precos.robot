***Settings***

Resource    ../resources/base.robot

# Executa o KW antes de cada testcase
Test Setup      Open Session
# Executa a KW depois de cada testcase
Test Teardown   Close Session

***Test Cases***
Consultar tela de preços

    Wait Until Page Contains                    VER MAIS
    Click Text                                  PREÇOS

    Wait Until Page Contains                    PREÇOS

    Wait Until Page Contains                    SEMANA IRRESISTÍVEL
