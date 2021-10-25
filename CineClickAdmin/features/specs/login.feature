#language:pt

Funcionalidade: Login Admin

    Cenário: Efetuar login com sucesso

        Dado que esteja na tela de login
        Quando preencho com as seguintes credenciais "master@cineclick.com" e "$c4l3S1573m"
        Então valido que foi logado com sucesso

    Cenário: Efetuar login com email inválido

        Dado que esteja na tela de login
        Quando preencho com email inválido "teste@teste.com.br" e "$c4l3S1573m"
        Então valido que será exibido um alerta de usuário/senha inválido