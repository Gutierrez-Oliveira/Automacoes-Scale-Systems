#language: pt

    Funcionalidade: Agências Comerciais

        Cenário: Criar nova agência

            Dado que esteja logado "scaleadmin" e "$c4l3s1573m"
            Quando seleciono agências
            E seleciono nova agência e preencho os campos
            Então valido que a agência foi criada

        Cenário: Criar nova agência usando perfil de gerente comercial

            Dado que esteja logado com as seguintes credenciais "scale_mcosta" e "84Corbula!FFX"
            Quando seleciono agências Comercial
            E seleciono nova agência e preencho os campos
            Então valido que a agência foi criada