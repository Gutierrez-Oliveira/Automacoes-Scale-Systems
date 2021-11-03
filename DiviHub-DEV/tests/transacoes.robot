***Settings***

Resource    ../resources/base.robot

# Executa o KW antes de cada testcase
Test Setup      Open Session
# Executa a KW depois de cada testcase
Test Teardown   Close Session

***Test Cases***
Consultar histórico de transações
    Get Login

    Click Text                  CONFIG.
    Wait Until Page Contains    Histórico de transações

Excluir uma compra
    Get Login

    Click Text                  CONFIG.
    Wait Until Page Contains    Configurações

    Click Text                  Histórico de transações
    Wait Until Page Contains    Histórico de transações
    Sleep                       1
    Click Text                  Projeto Street Bots (DEV)
    Wait Until Page Contains    Detalhe de compra

    Click Text                  CANCELAR COMPRA
    Wait Until Page Contains    Cancelamento

    Click Text                  CANCELAR A COMPRA
    Wait Until Page Contains    Cancelar compra
    Sleep                       1
    Input Text                  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[4]/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup[2]/android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup/android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.widget.EditText      Cancelando compra com teste automatizado
    Click Text                  CANCELAR COMPRA

    Wait Until Page Contains    Compra cancelada com sucesso!

    


