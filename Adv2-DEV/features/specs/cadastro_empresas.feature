#language: pt

    Funcionalidade: Cadastro de empresas

        Cenário: Efetuar cadastro de empresa com sucesso

            Dado que esteja logado "scaleadmin" e "$c4l3s1573m"
            Quando seleciono nova empresa e preencho os campos
            Então valido que a empresa foi cadastrada com sucesso