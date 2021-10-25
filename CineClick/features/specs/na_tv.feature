#language: pt

    Funcionalidade: Fluxo Na TV

        Cenário: Quero consultar a programação na tv

            Dado que esteja na página principal
            Quando seleciono Na TV
            Então valido que está sendo exibido a programação

        Cenário: Filtrar a programação por gênero

            Dado que esteja na página principal
            Quando seleciono Na TV
            E filtro a programação por gênero
            Então valido que está exibindo a programação apenas do gênero selecionado

        Cenário: Quero consultar os detalhes de uma programação

            Dado que esteja na página principal
            Quando seleciono Na TV
            E seleciono um programação
            Então valido que está sendo exibido os detalhes da programação