#language: pt

    Funcionalidade: Consulta de crédito

        Cenário: Efetuar consulta de de um CPF válido

            Dado que esteja logado "scaleadmin" e "$c4l3s1573m"
            Quando seleciono comercial e seleciono consultar crédito
            E preencho o campo com o CPF válido
            Então valido que foi consultado com sucesso

        Cenário: Efetuar consulta de de um CNPJ válido

            Dado que esteja logado "scaleadmin" e "$c4l3s1573m"
            Quando seleciono comercial e seleciono consultar crédito
            E preencho o campo com o CNPJ válido
            Então valido que foi consultado com sucesso

