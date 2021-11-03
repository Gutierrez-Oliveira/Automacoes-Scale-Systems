***Settings***

Resource    ../resources/base.robot

# Executa o KW antes de cada testcase
Test Setup      Open Session
# Executa a KW depois de cada testcase
Test Teardown   Close Session

***Test Cases***
Cadastrar email do botão avise-me logado
    Get Login

    Swipe                               499    1616    540    102
    Sleep                               1
    Swipe                               529    1570    564    100
    Sleep                               1
    Swipe                               536    1307    540    232
    Sleep                               1
    Swipe                               536    1307    540    102
    Sleep                               1
    Swipe                               536    1307    540    152 
    Sleep                               1
    Swipe                               536    1307    540    352
    Sleep                               1
    Swipe                               536    1307    540    152
    Click Text                          Esportes

    Wait Until Page Contains            Sobre o projeto
    Click Text                          Avise-me quando lançar

    Wait Until Page Contains            Quantos DIVIs
    Click Element                       xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[3]/android.widget.TextView

    Click Text                          Confirmar
    Sleep                               1
    Wait Until Page Contains            Você receberá um email assim que o projeto for lançado.

Cadastrar email do botão avise-me sem logar

    Wait Until Page Contains            Login
    Swipe                               499    1616    540    102
    Sleep                               1
    Swipe                               529    1570    564    100
    Sleep                               1
    Swipe                               536    1307    540    232
    Sleep                               1
    Swipe                               536    1307    540    102
    Sleep                               1
    Swipe                               536    1307    540    552 
    Sleep                               1
    Swipe                               536    1307    540    352
    Sleep                               1
    Swipe                               536    1307    540    152
    Click Text                          Esportes

    Wait Until Page Contains            Sobre o projeto
    Click Text                          Avise-me quando lançar

    Wait Until Page Contains            Quantos DIVIs
    Input Text                          xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.widget.EditText       testeautomatizado@teste.com.br

    Click Text                          Confirmar
    Sleep                               1
    Wait Until Page Contains            Você receberá um email assim que o projeto for lançado.

Cadastrar email inválido no botão avise-me

    Wait Until Page Contains            Login
    Swipe                               499    1616    540    102
    Sleep                               1
    Swipe                               529    1570    564    100
    Sleep                               1
    Swipe                               536    1307    540    232
    Sleep                               1
    Swipe                               536    1307    540    102
    Sleep                               1
    Swipe                               536    1307    540    552 
    Sleep                               1
    Swipe                               536    1307    540    352
    Sleep                               1
    Swipe                               536    1307    540    152
    Click Text                          Esportes

    Wait Until Page Contains            Sobre o projeto
    Click Text                          Avise-me quando lançar

    Wait Until Page Contains            Quantos DIVIs
    Input Text                          xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.widget.EditText       testeautomatizado$teste.com.br

    Click Text                          Confirmar
    Sleep                               1
    Wait Until Page Contains            Por favor, insira um email válido
