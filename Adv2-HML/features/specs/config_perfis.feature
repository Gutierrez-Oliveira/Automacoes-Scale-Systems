#language: pt

    Funcionalidade: Configurar Perfis

        Cenário: Criar novo perfil

            Dado que esteja logado "scaleadmin" e "$c4l3s1573m"
            Quando seleciono novo perfil
            Então valido que foi criado novo perfil

        Cenário: Consultar um perfil

            Dado que esteja logado "scaleadmin" e "$c4l3s1573m"
            Quando seleciono um perfil
            Então valido que foi exibido os detalhes do perfil