#language: pt

    Funcionalidade: Fluxo de Filmes

        Cenário: Quero consultar a lista de filmes com sucesso

            Dado que esteja na página principal
            Quando seleciono filmes
            Então valido que está sendo exibido a lista de filmes

        Cenário: Consultar informações de um filme

            Dado que esteja na página principal
            Quando seleciono filmes
            E clico sobre o filme
            Então valido que foi exibido as informações

