#language: pt

    Funcionalidade: Cadastro de Pacote

        Cenario: Quero efetuar o cadastro de um novo pacote com sucesso

            Dado que esteja logado "scaleadmin" e "$c4l3s1573m"
            Quando seleciono a opção cadastro e crio o novo pacote
            E preencho com dados válidos
            Então Valido se foi criado com sucesso
