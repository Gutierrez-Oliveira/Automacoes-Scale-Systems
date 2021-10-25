***Settings***

Resource    ../resources/base.robot

# Executa o KW antes de cada testcase
Test Setup      Open Session
# Executa a KW depois de cada testcase
Test Teardown   Close Session

***Test Cases***
Alterar declaração de investimento para realizei investimentos
    Get Login

    Click Text                  CONFIG.
    Wait Until Page Contains    Configurações

    Click Text                  Minha conta
    Wait Until Page Contains    Minha conta

    Click Text                  Declaração de investimento
    Sleep                       1
    Wait Until Page Contains    Declaração de investimento

    Click Element               xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[3]/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup[1]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[2]
    Click Text                  Realizei investimentos
    Swipe                       555    1417    542    985
    Sleep                       2
    Input Text                  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[3]/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup/android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup[3]/android.view.ViewGroup/android.widget.EditText       200000
    Swipe                       555    1417    542    985
    Click Text                  Salvar

    Wait Until Page Contains    Declaração de investimento

Alterar declaração de investimento para não realizei investimentos
    Get Login

    Click Text                  CONFIG.
    Wait Until Page Contains    Configurações

    Click Text                  Minha conta
    Wait Until Page Contains    Minha conta

    Click Text                  Declaração de investimento
    Sleep                       2
    Wait Until Page Contains    Declaração de investimento

    Click Element               xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[3]/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup[1]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[2]
    Click Text                  Não realizei investimentos
    Swipe                       555    1417    542    985
    Click Text                  Salvar