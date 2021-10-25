#language: pt

    Funcionalidade: Login

        Cenario: Efetuar Login com sucesso

            Dado que esteja na tela de login
            Quando submeto minhas credenciais "fcmaia@gmail.com" e "asdasd"
            Então valido que foi feito o login com sucesso

        Cenario: Efetuar login com credenciais inválidas
            Dado que esteja na tela de login
            Quando submeto minhas credencias inválidas "teste@yahoo.com.br" e "teste123"
            Então deve ser exibido um alerta de usuário/senha incorreto
