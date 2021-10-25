#language: pt

    Funcionalidade: Clientes Comercial

        Cenário: Criar novo cliente

            Dado que esteja logado "scaleadmin" e "$c4l3s1573m"
            Quando seleciono clientes
            E seleciono novo cliente
            Então valido que foi criado um novo cliente

        Cenário: Consultar um cliente

            Dado que esteja logado "scaleadmin" e "$c4l3s1573m"
            Quando seleciono um cliente
            Então valido que seja exibido os detalhes do cliente

        Cenário: Criar novo cliente com perfil gerente comercial

            Dado que esteja logado com as seguintes credenciais "scale_mcosta" e "84Corbula!FFX"
            Quando seleciono clientes no perfil gerente comercial
            E seleciono novo cliente
            Então valido que foi criado um novo cliente

        Cenário: Consultar um cliente

            Dado que esteja logado com as seguintes credenciais "scale_mcosta" e "84Corbula!FFX"
            Quando seleciono clientes no perfil gerente comercial
            Quando seleciono um cliente
            Então valido que seja exibido os detalhes do cliente

        Cenário: Cadastrar 20 categorias de produtos em um cliente

            Dado que esteja logado com as seguintes credenciais "scaleadmin" e "$c4l3s1573m"
            Quando Seleciono um cliente
            E cadastro as categorias selecionada
            Então valido que foi cadastrado as categorias com sucesso