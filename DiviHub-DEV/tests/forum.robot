***Settings***

Resource    ../resources/base.robot

# Executa o KW antes de cada testcase
Test Setup      Open Session
# Executa a KW depois de cada testcase
Test Teardown   Close Session

***Test Cases***
Consultar forum do projeto GAME ZERO
    Get Login

    Click Text                          O novo game está chegando!
    Swipe                               521    1613    554    104
    Sleep                               1
    Swipe                               521    1603    564    108
    Sleep                               1
    Swipe                               521    1603    564    108
    Wait Until Page Contains            Fórum
    Click Text                          Fórum

