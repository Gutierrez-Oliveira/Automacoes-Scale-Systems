#language: pt

    Funcionalidade: Recarga da carteira

        Cenário: Quero recarregar a carteira com sucesso

            Dado que esteja logado com as credenciais "goliveira@scale.com.br" e "Teste*01"
            Quando seleciona recarregar carteira e digito os valores
            Então Valido que foi criado o boleto com sucesso

        Cenário: Quero gerar um boleto e copiar o código de barras

            Dado que esteja logado com as credenciais "goliveira@scale.com.br" e "Teste*01"
            Quando gero o boleto e copio o código de barras
            Então valido que foi criado com sucesso

        Cenário: Quero alterar o valor da tarifa do boleto

            Dado que esteja logado com as credenciais "goliveira@scale.com.br" e "Teste*01"
            Quando altero o valor da tarifa do boleto e gero ele com sucesso
            Então Valido que o boleto foi gerado com sucesso

        Cenário: Consultar saldo em carteira

            Dado que esteja logado com as credenciais "goliveira@scale.com.br" e "Teste*01"
            Quando seleciono recarregar carteira
            Então valido o valor da carteira está correto