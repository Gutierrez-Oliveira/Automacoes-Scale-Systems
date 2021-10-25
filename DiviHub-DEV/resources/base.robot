***Settings***

Library         AppiumLibrary

***Keywords***
Open Session
    Set Appium Timeout      30
    Open Application    http://localhost:4723/wd/hub
    ...                 noReset=true
    ...                 deviceName=Emulator
    ...                 platformVersion=10
    ...                 appPackage=br.com.divihub
    ...                 appActivity=MainActivity
    ...                 platformName=android
    ...                 udid=emulator-5554
    ...                 app=${EXECDIR}/app/divihub.apk



Close Session
    Capture Page Screenshot
    Close Application

Get Login
    Wait Until Page Contains    Login     
    Click Text                  Login 

    Wait until Page Contains    Ainda não é cadastrado?
    Input Text                  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.widget.EditText       goliveira@scale.com.br
    Input Text                  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup[1]/android.widget.EditText    Teste*01
    Click Element               xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[3]
    
    Wait Until Page Contains    Captado

Get Boleto
    Wait Until Page Contains    Sobre o projeto
    Click Text                  Comece investindo com R$10,00

    Wait Until Page Contains    Ordem de compra
    Sleep                       3
    Input Text                  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[3]/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup[2]/android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.widget.EditText         15
    Sleep                       1
    Click Element               xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[3]/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup[2]/android.widget.ScrollView/android.view.ViewGroup/android.widget.Switch
    Sleep                       2
    Swipe                       516    1529    555    408
    
    Click Text                  Cartão de crédito
    Wait Until Page Contains    Selecione uma opção

    Click Text                  Boleto
    Click Text                  Selecionar
    Sleep                       2
    Click Text                  Continuar

    Wait Until Page Contains    Declaração de investidor
    Swipe                       544    1383    549    742
    Click Text                  LI E CONCORDO

    Wait Until Page Contains    Termo de adesão
    Swipe                       525    1579    590    118
    Sleep                       1
    Swipe                       525    1579    590    110
    Sleep                       1
    Swipe                       525    1579    590    123
    Click Text                  ACEITAR

    Wait Until Page Contains    Documento aceito com sucesso!
    Click Text                  Avançar

    Wait Until Page Contains    Confirmação de compra
    Swipe                       514    1583    505    1024
    Click Text                  Confirmar

    Wait Until Page Contains    PIN
    Input Text                  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[7]/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup[2]/android.view.ViewGroup/android.widget.EditText       130598
    Sleep                       3
    Click Text                  Finalizar compra

    Wait Until Page Contains    Recibo de compra

Get Cartao
    Wait Until Page Contains    Sobre o projeto
    Click Text                  Comece investindo com R$10,00

    Wait Until Page Contains    Ordem de compra
    Sleep                       3
    Input Text                  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[3]/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup[2]/android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.widget.EditText         15
    Sleep                       1
    Click Element               xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[3]/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup[2]/android.widget.ScrollView/android.view.ViewGroup/android.widget.Switch
    Sleep                       2
    Swipe                       523    1592    585    264
    Sleep                       1
    Click Text                  Continuar

    Wait Until Page Contains    Declaração de investidor
    Swipe                       544    1383    549    742
    Click Text                  LI E CONCORDO
       
    Wait Until Page Contains    Termo de adesão
    Swipe                       525    1579    590    118
    Sleep                       1
    Swipe                       525    1579    590    110
    Sleep                       1
    Swipe                       525    1579    590    115
    Click Text                  ACEITAR

    Wait Until Page Contains    Documento aceito com sucesso!
    Click Text                  Avançar

    Wait Until Page Contains    Confirmação de compra
    Swipe                       514    1583    505    1024
    Click Text                  Confirmar

    Wait Until Page Contains    PIN
    Input Text                  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[7]/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup[2]/android.view.ViewGroup/android.widget.EditText       130598
    Sleep                       3
    Click Text                  Finalizar compra

    Wait Until Page Contains    Recibo de compra

Get Saldo
    Wait Until Page Contains    Sobre o projeto
    Click Text                  Comece investindo com R$10,00

    Wait Until Page Contains    Ordem de compra
    Sleep                       3
    Input Text                  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[3]/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup[2]/android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.widget.EditText         1
    Sleep                       1
    Click Element               xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[3]/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup[2]/android.widget.ScrollView/android.view.ViewGroup/android.widget.Switch
    Sleep                       2
    Swipe                       516    1529    555    408
    
    Click Text                  Cartão de crédito
    Wait Until Page Contains    Selecione uma opção

    Click Text                  Saldo da carteira
    Click Text                  Selecionar
    Sleep                       2
    Click Text                  Continuar
    Sleep                       4

    Swipe                       544    1383    549    742
    Click Text                  LI E CONCORDO

    Wait Until Page Contains    Termo de adesão
    Swipe                       525    1579    590    118
    Sleep                       1
    Swipe                       525    1579    590    110
    Sleep                       1
    Swipe                       525    1579    590    123
    Click Text                  ACEITAR

    Wait Until Page Contains    Documento aceito com sucesso!
    Click Text                  Avançar

    Wait Until Page Contains    Confirmação de compra
    Swipe                       514    1583    505    1024
    Click Text                  Confirmar

    Wait Until Page Contains    PIN
    Input Text                  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[7]/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup[2]/android.view.ViewGroup/android.widget.EditText       130598
    Sleep                       3
    Click Text                  Finalizar compra

    Wait Until Page Contains    Recibo de compra

Get PIX
    Wait Until Page Contains    Sobre o projeto
    Click Text                  Comece investindo com R$10,00

    Wait Until Page Contains    Ordem de compra
    Sleep                       3
    Input Text                  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[3]/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup[2]/android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.widget.EditText         15
    Sleep                       1
    Click Element               xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[3]/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup[2]/android.widget.ScrollView/android.view.ViewGroup/android.widget.Switch
    Sleep                       2
    Swipe                       516    1529    555    408
    
    Click Text                  Cartão de crédito
    Wait Until Page Contains    Selecione uma opção

    Click Text                  PIX
    Click Text                  Selecionar
    Sleep                       2
    Click Text                  Continuar

    Wait Until Page Contains    Declaração de investidor
    Swipe                       544    1383    549    742
    Click Text                  LI E CONCORDO

    Wait Until Page Contains    Termo de adesão
    Swipe                       525    1579    590    118
    Sleep                       1
    Swipe                       525    1579    590    110
    Sleep                       1
    Swipe                       525    1579    590    123
    Click Text                  ACEITAR

    Wait Until Page Contains    Documento aceito com sucesso!
    Click Text                  Avançar

    Wait Until Page Contains    Confirmação de compra
    Swipe                       514    1583    505    1024
    Click Text                  Confirmar

    Wait Until Page Contains    PIN
    Input Text                  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[7]/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup[2]/android.view.ViewGroup/android.widget.EditText       123456
    Sleep                       3
    Click Text                  Finalizar compra

    Wait Until Page Contains    Recibo de compra
    Wait Until Page Contains    Parabéns

Get senha
    Click Text                      CONFIG.
    Sleep                           2

    Wait Until Page Contains        Configurações
    Click Text                      Minha conta
    Sleep                           1
    
    Wait Until Page Contains        Minha conta
    Click Text                      Dados de acesso
    Sleep                           1

    Wait Until Page Contains        Dados de acesso
    Click Text                      Alterar senha
    Sleep                           1

Get excluir
    Click Element               xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup
    Wait Until Page Contains    Sobre o projeto
    Click Text                  Comece investindo com R$10,00

    Wait Until Page Contains    Ordem de compra
    Input Text                  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[3]/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup[2]/android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.widget.EditText         15
    Sleep                       1
    Click Element               xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[3]/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup[2]/android.widget.ScrollView/android.view.ViewGroup/android.widget.Switch
    Sleep                       2
    Swipe                       516    1529    555    408
    
    Click Element               xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[3]/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup[2]/android.widget.ScrollView/android.view.ViewGroup/android.widget.HorizontalScrollView/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup