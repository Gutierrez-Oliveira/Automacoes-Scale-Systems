***Settings***

Resource    ../resources/base.robot

# Executa o KW antes de cada testcase
Test Setup      Open Session
# Executa a KW depois de cada testcase
Test Teardown   Close Session

***Test Cases***
Atendimento pelo WhatsApp
    Get Login

    Click Text                      CONFIG.
    Wait Until Page Contains        Configurações

    Click Text                      Perguntas frequentes
    Wait Until Page Contains        PERGUNTAS FREQUENTES

    Click Element                   xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup[2]/android.webkit.WebView/android.webkit.WebView/android.view.View/android.view.View/android.view.View[1]/android.view.View[2]/android.view.View[1]/android.view.View
    Click Text                      Atendimento por WhatsApp ATENDIMENTO POR WHATSAPP
    Wait Until Page Contains        CONTINUE TO CHAT

