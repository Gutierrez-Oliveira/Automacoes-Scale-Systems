#language: pt
Funcionalidade: Criar Ofertas

    Cenário: Quero criar uma oferta com sucesso

        Dado que esteja logado com as credenciais "goliveira@scale.com.br" e "Teste*01"
        Quando acesso a página de ofertas
        E preencho os campos necessários
        Então valido que foi criado com sucesso

    Cenário: Quero criar uma oferta com dados inválidos no preenchimento da oferta

        Dado que esteja logado com as credenciais "goliveira@scale.com.br" e "Teste*01"
        Quando acesso a página de ofertas
        E preencho os campos com dados inválidos
        Então válido que não foi criado a oferta