#language: pt

    Funcionalidade: Login no Flix

        Cenário: Efetuar login com sucesso

            Dado que esteja na tela de Login
            Quando submeto as credenciais "teste@teste123.com.br" e "asdasd"
            Então valido que foi feito o login com sucesso

        Cenário: Login com e-mail inválido inválidos

            Dado que esteja na tela de login
            Quando submeto as credenciais "teste$teste123.com.br" e "asdasd"
            Então valido que será exibido um alerta de e-mail inválido

        Cenário: Login com senha inválida

            Dado que esteja na tela de login
            Quando submeto as credenciais "teste@teste123.com.br" e "123123"
            Então valido que será exibido um alerta de usuário ou senha inválidos

