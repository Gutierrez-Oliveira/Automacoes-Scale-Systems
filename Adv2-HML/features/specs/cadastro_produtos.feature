#language: pt

    Funcionalidade: Criar Produtos

        Cenário: Quero cadastrar um novo produto

            Dado que esteja logado "scaleadmin" e "$c4l3s1573m"
            Quando seleciono novo produto e preencho os campos
            Então valido que o produto foi criado

        Cenário: Consultar produto e seus detalhes

            Dado que esteja logado "scaleadmin" e "$c4l3s1573m"
            Quando seleciono produtos e vejo seus detalhes
            Então valido que suas informações estão sendo exibidos 

