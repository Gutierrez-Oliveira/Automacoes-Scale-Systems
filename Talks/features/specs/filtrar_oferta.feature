#language: pt
    Funcionalidade: Filtrar ofertas

        Cenário: Quero filtrar as ofertas por categoria game

            Dado que esteja logado com as credenciais "goliveira@scale.com.br" e "Teste*01"
            Quando acesso a página de ofertas
            E filtro as ofertas para game
            Então valido que será exibido apenas as ofertas de game