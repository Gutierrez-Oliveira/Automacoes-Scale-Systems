***Settings***

Resource    ../resources/base.robot

# Executa o KW antes de cada testcase
Test Setup      Open Session
# Executa a KW depois de cada testcase
Test Teardown   Close Session

***Test Cases***
Efetuar recarga da carteira com sucesso
    Get Login2

    Click Element               xpath=//android.widget.Button[@content-desc="carteira, tab, 4 of 5"]/android.view.ViewGroup/android.view.ViewGroup
    Wait Until Page Contains    Minha carteira
    
    Click Text                  Valor disponível para uso              
    Wait Until Page Contains    CARTEIRA

    Click Text                  RECARREGAR CARTEIRA
    Sleep                       7
    Input Text                  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup[1]/android.view.ViewGroup/android.widget.EditText      200000
    Wait Until Page Contains    R$2.003,50
    Hide Keyboard
    Click Text                  Gerar boleto
    Wait Until Page Contains    Utilize o código de barras abaixo para realizar o pagamento: