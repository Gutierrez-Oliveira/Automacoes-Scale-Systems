***Settings***

Library         AppiumLibrary

Library         FakerLibrary    locale=pt_BR

# *** Test Cases ***
# Teste dados fakes BRASILEIROS
#     ${CPF}      FakerLibrary.cpf
#     ${NOME}     FakerLibrary.name
#     ${CIDADE}   FakerLibrary.city
#     ${CEP}      FakerLibrary.postcode
#     ${ESTADO}   FakerLibrary.state

***Keywords***
Open Session
    Set Appium Timeout      30
    Open Application    http://localhost:4723/wd/hub
    ...                 noReset=true
    ...                 deviceName=Emulator
    ...                 platformVersion=10
    ...                 appPackage=com.kinoplex_app3
    ...                 appActivity=MainActivity
    ...                 platformName=android
    ...                 udid=emulator-5554
    ...                 app=${EXECDIR}/app/kinoplex.apk



Close Session
    Capture Page Screenshot
    Close Application

Get Login
    Wait Until Page Contains    VER MAIS     
    # Click Element               xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup[6]/android.widget.TextView 

    # Wait Until Page Contains    PROMOÇÕES
    # Click Text                  SAIR

    # Wait Until Page Contains    VER MAIS     
    Click Element               xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup[6]/android.widget.TextView 

    Wait Until Page Contains    PROMOÇÕES

    Click Text                  ENTRAR
    Wait Until Page Contains    LOGIN

    Input Text                  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup[3]/android.widget.EditText[1]       edgar.moreira@kinoplex.com.br
    Input Text                  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup[3]/android.widget.EditText[2]       matheus

    Click Text                  ENTRAR
    Wait Until Page Contains    VER MAIS     
    Click Element               xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup[6]/android.widget.TextView 

    Wait Until Page Contains    PROMOÇÕES

Get Login Invalido
    Wait Until Page Contains    VER MAIS     
    Click Element               xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup[6]/android.widget.TextView 

    Wait Until Page Contains    PROMOÇÕES
    Click Text                  SAIR

    Wait Until Page Contains    VER MAIS     
    Click Element               xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup[6]/android.widget.TextView 

    Wait Until Page Contains    PROMOÇÕES

    Click Text                  ENTRAR
    Wait Until Page Contains    LOGIN

    Input Text                  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup[3]/android.widget.EditText[1]       edgar.moreira!kinoplex.com.br
    Input Text                  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup[3]/android.widget.EditText[2]       matheus

    Click Text                  ENTRAR
    Wait Until Page Contains    Dados incorretos    
