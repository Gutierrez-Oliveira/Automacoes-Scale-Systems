***Settings***

Resource    ../resources/base.robot

# Executa o KW antes de cada testcase
Test Setup      Open Session
# Executa a KW depois de cada testcase
Test Teardown   Close Session

***Test Cases***
Consultar forum do projeto MusicBlast
    Get Login

    Swipe                               499    1616    540    102
    Sleep                               1
    Swipe                               529    1570    564    100
    Sleep                               1
    Swipe                               536    1307    540    232
    Sleep                               1
    Swipe                               536    1307    540    302
    Sleep                               1
    Swipe                               536    1307    540    152
    Click Text                          Invista nos novos hits!
    Swipe                               521    1613    554    104
    Sleep                               1
    Swipe                               521    1603    564    108
    Sleep                               1
    Swipe                               521    1603    564    108
    Wait Until Page Contains            Fórum
    Click Text                          Fórum

