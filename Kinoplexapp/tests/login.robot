***Settings***

Resource    ../resources/base.robot

# Executa o KW antes de cada testcase
Test Setup      Open Session
# Executa a KW depois de cada testcase
Test Teardown   Close Session

***Test Cases***
Efetuar o login com sucesso

    Get Login

Efetuar o login com credenciais inválidas

    Get Login Invalido
    
