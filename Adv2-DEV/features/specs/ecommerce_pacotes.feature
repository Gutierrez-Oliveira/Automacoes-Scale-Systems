#language: pt

    Funcionalidade: Cadastro de Pacote

        Cenario: Quero efetuar o cadastro de um novo pacote com sucesso

            Dado que esteja logado "scaleadmin" e "$c4l3s1573m"
            Quando seleciono a opção cadastro e crio o novo pacote
            E preencho com dados válidos
            Então Valido se foi criado com sucesso

        # Cenário: Efetuar cadastro de um novo pacote usando perfil do gerente comercial

        #     Dado que esteja logado com as seguintes credenciais "scale_mcosta" e "84Corbula!FFX"
        #     Quando seleciono a opção cadastro e crio o novo pacote
        #     E preencho com dados válidos
        #     Então Valido se foi criado com sucesso 
