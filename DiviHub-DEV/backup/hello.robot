***Settings***
Library     hello.py

***Test Cases***
Deve rertornar mensagem de boas vindas
    ${result}=  Hello Robot     Bem vindo
    Should Be Equal     ${result}   Olá,Bem vindo