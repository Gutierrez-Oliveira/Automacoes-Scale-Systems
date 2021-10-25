#language:pt

    Funcionalidade: Consulta de Pedidos

        Cenário: Consultar um pedido efetuado com sucesso

            Dado que esteja logado com as credenciais "teste@teste123.com.br" e "asdasd"
            Quando seleciono resumo dos pedidos
            Então valido que será exibido o resumo do pedido