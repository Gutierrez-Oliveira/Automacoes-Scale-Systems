#language: pt

    Funcionalidade: Login ADM

        Cenário: Efetuar login com sucesso

            Dado que esteja na tela de login
            Quando submeto minhas credenciais "scaleadmin" e "$c4l3s1573m"
            Então valido que foi efetuado o login com sucesso

        Cenário: Efetuar login com credenciais inválidas

            Dado que esteja na tela de login
            Quando submeto minhas credenciais inválidas "scaleadmin" e "teste123"
            Então valido que será exibido alerta de usuário ou senhas inválido

         Cenário: Efetuar login deixando campo em branco

            Dado que esteja na tela de login
            Quando deixo os campos em branco
            Então valido que será exibido alerta de usuário ou senhas inválido  
