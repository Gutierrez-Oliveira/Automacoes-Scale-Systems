***Settings***

Resource    ../resources/base.robot

# Executa o KW antes de cada testcase
Test Setup      Open Session
# Executa a KW depois de cada testcase
Test Teardown   Close Session

***Test Cases***
Cadastrar email do botão avise-me logado
    Get Login

    Swipe                               505    1544    508    201
    Sleep                               1
    Swipe                               531    1585    546    473
    Sleep                               1
    Swipe                               564    1523    553    385
    Sleep                               1
    Swipe                               564    1523    553    185
    Click Text                          Bem-vindo à nossa colônia

    Wait Until Page Contains            Sobre o projeto
    Click Text                          Avise-me quando lançar

    Wait Until Page Contains            Quantos DIVIs
    Click Element                       xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[3]/android.widget.TextView

    Click Text                          Confirmar
    Sleep                               1
    Wait Until Page Contains            Você receberá um email assim que o projeto for lançado.

Cadastrar email do botão avise-me sem logar

    Wait Until Page Contains            Login
    Swipe                               505    1544    508    201
    Sleep                               1
    Swipe                               531    1585    546    473
    Sleep                               1
    Swipe                               564    1523    553    385
    Sleep                               1
    Swipe                               564    1523    553    185
    Click Text                          Bem-vindo à nossa colônia

    Wait Until Page Contains            Sobre o projeto
    Click Text                          Avise-me quando lançar

    Wait Until Page Contains            Quantos DIVIs
    Input Text                          xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.widget.EditText       testeautomatizado@teste.com.br

    Click Text                          Confirmar
    Sleep                               1
    Wait Until Page Contains            Você receberá um email assim que o projeto for lançado.

Cadastrar email inválido no botão avise-me

    Wait Until Page Contains            Login
    Swipe                               505    1544    508    201
    Sleep                               1
    Swipe                               531    1585    546    473
    Sleep                               1
    Swipe                               564    1523    553    385
    Sleep                               1
    Swipe                               564    1523    553    185
    Click Text                          Bem-vindo à nossa colônia

    Wait Until Page Contains            Sobre o projeto
    Click Text                          Avise-me quando lançar

    Wait Until Page Contains            Quantos DIVIs
    Input Text                          xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.widget.EditText       testeautomatizado$teste.com.br

    Click Text                          Confirmar
    Sleep                               1
    Wait Until Page Contains            Por favor, insira um email válido
