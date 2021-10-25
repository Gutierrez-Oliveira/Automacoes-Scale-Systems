***Settings***

Library     AppiumLibrary

***Test Cases***
Deve abrir a tela inicial
    Open Application    http://localhost:4723/wd/hub
    ...                 noReset=true
    ...                 deviceName=Emulator
    ...                 platformVersion=10
    ...                 appPackage=br.com.divihub
    ...                 appActivity=MainActivity
    ...                 platformName=android
    ...                 udid=emulator-5554
    ...                 app=${EXECDIR}/app/divihub.apk

    Wait Until Page Contains   PROJETOS    15
    Close Application
