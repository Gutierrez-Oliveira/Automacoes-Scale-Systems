#language: pt

    Funcionalidade: Clientes Comercial

        Cenário: Criar novo cliente

            Dado que esteja logado "scaleadmin" e "$c4l3s1573m"
            Quando seleciono novo cliente
            Então valido que foi criado um novo cliente

        Cenário: Consultar um cliente

            Dado que esteja logado "scaleadmin" e "$c4l3s1573m"
            Quando seleciono um cliente
            Então valido que seja exibido os detalhes do cliente