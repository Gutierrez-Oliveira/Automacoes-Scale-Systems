#language: pt
    Funcionalidade: Pesquisar oferta

        Cenário: Quero efetuar pesquisa de uma oferta
            Dado que esteja logado com as credenciais "goliveira@scale.com.br" e "Teste*01"
            Quando acesso a página de ofertas
            E no campo de pesquisa digito o nome de um projeto
            Então valido que foi pesquisado com sucesso

            