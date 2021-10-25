#language: pt

    Funcionalidade: Relatórios

        Cenário: Consultar relatório de novos clientes com data inicio e fim

            Dado que esteja logado "scaleadmin" e "$c4l3s1573m"
            Quando seleciono data inicio e fim para consultar os novos clientes
            Então valido que foi exibido os clientes da data selecionada

    
