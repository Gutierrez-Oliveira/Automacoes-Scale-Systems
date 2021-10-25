***Settings***

Resource    ../resources/base.robot

# Executa o KW antes de cada testcase
Test Setup      Open Session
# Executa a KW depois de cada testcase
Test Teardown   Close Session

***Test Cases***
Efetuar a consulta de um filme com sucesso

    Wait Until Page Contains                    VER MAIS
    Click Text                                  FILMES

    Wait Until Page Contains                    CRUELLA

Filtrar filmes na categoria ação com sucesso

    Wait Until Page Contains                    VER MAIS
    Click Text                                  FILMES

    Wait Until Page Contains                    FILMES
    Sleep                                       2
    Click Element                               xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[2]

    Wait Until Page Contains                    FILTRO
    Click Text                                  AÇÃO
    Swipe                                       868    1441    866    955

    Click Text                                  FILTRAR
    Wait Until Page Contains                    GODZILLA VS KONG
    


