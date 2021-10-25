#language: pt

    Funcionalidade: Agências Comerciais

        Cenário: Criar nova agência

            Dado que esteja logado "scaleadmin" e "$c4l3s1573m"
            Quando seleciono nova agência e preencho os campos
            Então valido que a agência foi criada