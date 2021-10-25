***Settings***

Resource    ../resources/base.robot

# Executa o KW antes de cada testcase
Test Setup      Open Session
# Executa a KW depois de cada testcase
Test Teardown   Close Session

***Test Cases***
Efetuar compra de divis do GAME ZERO usando boleto
    Get Login

    Swipe                       499    1616    540    102
    Sleep                       1
    Swipe                       529    1570    564    100
    Sleep                       1
    Swipe                       536    1307    540    102
    Sleep                       1
    Swipe                       536    1307    540    602
    Click Text                  O novo game está chegando!

    Get Boleto 

    
Efetuar compra de divis do GAME ZERO usando cartão de crédito
    Get Login

    Swipe                       499    1616    540    102
    Sleep                       1
    Swipe                       529    1570    564    100
    Sleep                       1
    Swipe                       536    1307    540    232
    Sleep                       1
    Swipe                       536    1307    540    602
    Click Text                  O novo game está chegando!

    Get Cartao

Efetuar compra de divis do GAME ZERO usando saldo em carteira
    Get Login

    Swipe                       499    1616    540    102
    Sleep                       1
    Swipe                       529    1570    564    100
    Sleep                       1
    Swipe                       536    1307    540    232
    Sleep                       1
    Swipe                       536    1307    540    602
    Click Text                  O novo game está chegando!

    Get Saldo

# Efetuar compra de divis do GAME ZERO usando PIX
#     Get Login
#     Click Element               xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup
#     Get PIX

Efetuar compra de divis do METAFORANDO usando boleto
    Get Login

    Swipe                       564    1292    568    289
    Sleep                       1
    Swipe                       538    1443    559    203
    Sleep                       1
    Swipe                       557    1363    551    306
    Click Text                  Vitor Santos - saiba mais!
    Get Boleto
    
Efetuar compra de divis do METAFORANDO usando cartão de crédito
    Get Login
    
    Swipe                       564    1292    568    289
    Sleep                       1
    Swipe                       538    1443    559    203
    Sleep                       1
    Swipe                       557    1363    551    306
    Click Text                  Vitor Santos - saiba mais!
    Get Cartao

Efetuar compra de divis do METAFORANDO usando saldo na carteira
    Get Login
    
    Swipe                       564    1292    568    289
    Sleep                       1
    Swipe                       538    1443    559    203
    Sleep                       1
    Swipe                       557    1363    551    306
    Click Text                  Vitor Santos - saiba mais!
    Get Saldo

Efetuar compra de divis do MUSIC usando boleto
    Get Login

    Swipe                       499    1616    540    102
    Sleep                       1
    Swipe                       529    1570    564    100
    Sleep                       1
    Swipe                       536    1307    540    232
    Sleep                       1
    Swipe                       536    1307    540    552
    Sleep                       1
    Swipe                       536    1307    540    602
    Click Text                  Invista nos novos hits!
    Get Boleto
    
Efetuar compra de divis do MUSIC usando cartão de crédito
    Get Login

    Swipe                       499    1616    540    102
    Sleep                       1
    Swipe                       529    1570    564    100
    Sleep                       1
    Swipe                       536    1307    540    232
    Sleep                       1
    Swipe                       536    1307    540    602
    Sleep                       1
    Swipe                       536    1307    540    652
    Click Text                  Invista nos novos hits!
    Get Cartao

Efetuar compra de divis do MUSIC usando saldo em carteira
    Get Login

    Swipe                       499    1616    540    102
    Sleep                       1
    Swipe                       529    1570    564    100
    Sleep                       1
    Swipe                       536    1307    540    232
    Sleep                       1
    Swipe                       536    1307    540    602
    Sleep                       1
    Swipe                       536    1307    540    652    
    Click Text                  Invista nos novos hits!
    Get Saldo

# Efetuar compra de divis do MUSIC usando PIX
#     Get Login
    
#     Swipe                       525    1616    534    104
#     Sleep                       1
#     Swipe                       525    1616    534    304
#     Click Text                  Invista nos novos hits!
#     Get PIX

Efetuar compra de divis do MEGAGIG usando boleto
    Get Login

    Swipe                       499    1616    540    102
    Sleep                       1
    Swipe                       529    1570    564    100
    Sleep                       1
    Swipe                       536    1307    540    232
    Sleep                       1
    Swipe                       536    1307    540    402
    Sleep                       1
    Swipe                       536    1307    540    152  
    Click Text                  Quer ser sócio do MegaGig?
    Get Boleto
    
Efetuar compra de divis do MEGAGIG usando cartão de crédito
    Get Login
    
    Swipe                       499    1616    540    102
    Sleep                       1
    Swipe                       529    1570    564    100
    Sleep                       1
    Swipe                       536    1307    540    232
    Sleep                       1
    Swipe                       536    1307    540    402
    Sleep                       1
    Swipe                       536    1307    540    152  
    Click Text                  Quer ser sócio do MegaGig?
    Get Cartao

Efetuar compra de divis do MEGAGIG usando saldo em carteira
    Get Login
    
    Swipe                       499    1616    540    102
    Sleep                       1
    Swipe                       529    1570    564    100
    Sleep                       1
    Swipe                       536    1307    540    232
    Sleep                       1
    Swipe                       536    1307    540    402
    Sleep                       1
    Swipe                       536    1307    540    152  
    Click Text                  Quer ser sócio do MegaGig?
    Get Saldo

# Efetuar compra de divis do MEGAGIG usando PIX
#     Get Login
    
#     Swipe                       525    1616    534    025
#     Sleep                       1
#     Swipe                       525    1616    534    025
#     Sleep                       1
#     Swipe                       525    1616    534    425
#     Click Text                  Quer ser sócio do MegaGig?
#     Get PIX

Efetuar compra de divis dos Irmãos Piologo usando boleto
    Get Login

    Swipe                       564    1292    568    389
    Sleep                       1
    Swipe                       538    1443    559    403
    Click Text                  Irmãos Piologo - saiba mais (DEV)
    Get Boleto
    
Efetuar compra de divis dos Irmãos Piologo usando cartão de crédito
    Get Login
    
    Swipe                       564    1292    568    389
    Sleep                       1
    Swipe                       538    1443    559    403
    Click Text                  Irmãos Piologo - saiba mais (DEV)
    Get Cartao

Efetuar compra de divis dos Irmãos Piologo usando saldo em carteira
    Get Login
    
    Swipe                       564    1292    568    389
    Sleep                       1
    Swipe                       538    1443    559    403
    Click Text                  Irmãos Piologo - saiba mais (DEV)
    Get Saldo

Efetuar compra sem aceitar os termos
    Get Login

    Click Element               xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup
    Wait Until Page Contains    Sobre o projeto
    Click Text                  Comece investindo com R$10,00

    Wait Until Page Contains    Ordem de compra
    Sleep                       3
    Input Text                  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[3]/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup[2]/android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.widget.EditText         15
    Sleep                       8
    Swipe                       516    1529    555    408
    
    Click Text                  Cartão de crédito
    Wait Until Page Contains    Selecione uma opção

    Click Text                  Boleto
    Click Text                  Selecionar
    Sleep                       2
    Click Text                  Continuar

    Wait Until Page Contains    Termos de compra
    Sleep                       2
    Wait Until Page Contains    É necessário concordar com o Contrato de compra e com os Termos de Ciência de risco
