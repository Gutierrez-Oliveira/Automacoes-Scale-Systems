#language:pt

    Funcionalidade: Comissões de Gerente e Executivos

        Cenário: Criar novo executivo

            Dado que esteja logado "scaleadmin" e "$c4l3s1573m"
            Quando seleciono comissões para criar novo executivo
            E seleciono novo executivo e preencho os campos
            Então valido que foi criado o executivo


        Cenário: Criar novo gerente comercial

            Dado que esteja logado "scaleadmin" e "$c4l3s1573m"
            Quando seleciono comissões para criar novo gerente comercial
            E seleciono novo executivo e preencho os campos
            Então valido que foi criado o gerente comercial


        Cenário: Consultar um gerente comercial

            Dado que esteja logado "scaleadmin" e "$c4l3s1573m"
            Quando pesquiso um gerente comercial
            Então valido que será exibido suas informações

        Cenário: Consultar um executivo

            Dado que esteja logado "scaleadmin" e "$c4l3s1573m"
            Quando pesquiso um executivo
            Então valido que será exibido suas informações
