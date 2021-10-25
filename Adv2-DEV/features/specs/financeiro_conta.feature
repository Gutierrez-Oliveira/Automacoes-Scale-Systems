#language:pt

    Funcionalidade: Contas Bancárias

        Cenário: Criar nova conta bancária

            Dado que esteja logado "scaleadmin" e "$c4l3s1573m"
            Quando seleciono contas bancarias e preencho os campos
            Então valido que a conta foi criada com sucesso

        Cenário: Criar conta bancária com dados inválidos

            Dado que esteja logado "scaleadmin" e "$c4l3s1573m"
            Quando seleciono contas bancárias e preecnho os campos com dados inválidos
            Então valido que será exibido um alerta
            
