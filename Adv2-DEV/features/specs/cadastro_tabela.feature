#language: pt

    Funcionalidade: Tabela de preço

        Cenário: Criar uma tabela de preço

            Dado que esteja logado "scaleadmin" e "$c4l3s1573m"
            Quando seleciono para criar nova tabela
            E preencho os campos
            Então Valido que foi criado a tabela
