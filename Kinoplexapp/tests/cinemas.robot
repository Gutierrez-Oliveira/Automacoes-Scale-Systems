***Settings***

Resource    ../resources/base.robot

# Executa o KW antes de cada testcase
Test Setup      Open Session
# Executa a KW depois de cada testcase
Test Teardown   Close Session

***Test Cases***
Consultar tela que exibe a lista de cinemas

    Wait Until Page Contains                    VER MAIS
    Click Text                                  CINEMAS

    Wait Until Page Contains                    TODOS OS CINEMAS

Consultar um cinema rolando a tela para baixo

    Wait until Page Contains                    VER MAIS
    Click Text                                  CINEMAS

    Wait Until Page Contains                    TODOS OS CINEMAS
    Swipe                                       540    1590    549    635

    Wait Until Page Contains                    UBERABA

Selecionar o cinema Kinoplex Uberaba

    Wait Until Page Contains                    VER MAIS
    Click Text                                  CINEMAS

    Wait Until Page Contains                    TODOS OS CINEMAS
    Swipe                                       540    1590    549    635
    Click Text                                  KINOPLEX UBERABA (10014 Km)

    Wait Until Page Contains                    Kinoplex Uberaba                      
                     