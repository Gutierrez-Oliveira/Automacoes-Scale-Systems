#language: pt

    Funcionalidade: Consultar propostas comerciais

        Cenário: Quero criar uma nova proposta comercial com cliente cadastrado

            Dado que esteja logado "scaleadmin" e "$c4l3s1573m"
            Quando seleciono nova proposta e preencho os campos
            Então válido que foi criado com sucesso

        Cenário: Quero criar uma nova proposta comercial com novo cliente

            Dado que esteja logado "scaleadmin" e "$c4l3s1573m"
            Quando seleciono nova proposta comercial
            E preencho os campos do cliente novo e os campos da proposta
            Então válido que foi criado com sucesso a proposta com cliente novo

        Cenário: Aprovar a análise de crédito

            Dado que esteja logado "scaleadmin" e "$c4l3s1573m"
            Quando seleciono a proposta e aceite ela
            Então valido que a proposta foi aceita com sucesso

        Cenário: Rejeitar a análise de crédito

            Dado que esteja logado "scaleadmin" e "$c4l3s1573m"
            Quando seleciono a proposta e rejeito ela
            Então valido que a proposta foi rejeitada

        Cenário: Garantir que seja exibido os estados, cidades e cinemas

            Dado que esteja logado "scaleadmin" e "$c4l3s1573m"
            Quando seleciono uma proposta comercial
            E seleciono material e volto para a tela anterior repetidamente
            Então sempre valido que está sendo exibido as informações dos estados, cidades e cinemas

        # Cenário: Quero criar uma nova proposta comercial com cliente cadastrado usando perfil gerente comercial

        #     Dado que esteja logado com as seguintes credenciais "scale_mcosta" e "84Corbula!FFX"
        #     Quando seleciono nova proposta e preencho os campos
        #     Então válido que foi criado com sucesso

        # Cenário: Quero criar uma nova proposta comercial com novo cliente usando perfil de gerente comercial

        #     Dado que esteja logado com as seguintes credenciais "scale_mcosta" e "84Corbula!FFX"
        #     Quando seleciono nova proposta comercial
        #     E preencho os campos do cliente novo e os campos da proposta
        #     Então válido que foi criado com sucesso a proposta com cliente novo

        # Cenário: Aprovar a análise de crédito usando perfil de gerente comercial

        #     Dado que esteja logado com as seguintes credenciais "scale_mcosta" e "84Corbula!FFX"
        #     Quando seleciono a proposta e aceite ela
        #     Então valido que a proposta foi aceita com sucesso

        # Cenário: Rejeitar a análise de crédito usando perfil de gerente comercial

        #     Dado que esteja logado com as seguintes credenciais "scale_mcosta" e "84Corbula!FFX"
        #     Quando seleciono a proposta e rejeito ela
        #     Então valido que a proposta foi rejeitada