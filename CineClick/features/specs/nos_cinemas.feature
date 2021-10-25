#language: pt

    Funcionalidade: Fluxo Nos Cinemas

        Cenário: Quero consultar a lista de filmes nos cinemas

            Dado que esteja na página principal
            Quando seleciono Nos Cinemas
            Então valido que foi exibido a lista de filmes

        Cenário: Quero consultar os filmes com uma data posterior

            Dado que esteja na página principal
            Quando seleciono Nos Cinemas
            E seleciono a última data dísponivel
            Então valido que será exibido o filme daquela data selecionada