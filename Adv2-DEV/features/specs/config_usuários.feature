#language: pt

    Funcionalidade: Configurações Usuários

        Cenário: Efetuar cadastro de um novo usuário

            Dado que esteja logado "scaleadmin" e "$c4l3s1573m"
            Quando seleciono novo usuário e preencho os campos
            Então valido que foi criado novo usuário

        Cenário: Consultar um usuário

            Dado que esteja logado "scaleadmin" e "$c4l3s1573m"
            Quando seleciono um usuário
            Então valido que será exibido os detalhes do usuário