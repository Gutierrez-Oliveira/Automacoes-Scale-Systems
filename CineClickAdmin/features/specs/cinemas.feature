#language: pt

    Funcionalidade: Cinemas

        Cenário: Consultar informações de um cinema

            Dado que esteja logado como "master@cineclick.com" e "$c4l3S1573m" e seleciono cinemas
            Quando seleciono um cinema
            Então valido que as informações do cinema esteja sendo exibido

        Cenário: Criar um novo cinema

            Dado que esteja logado como "master@cineclick.com" e "$c4l3S1573m" e seleciono cinemas
            Quando seleciono novo cinema e preencho os campos
            Então valido que o cinema foi criado com sucesso

        Cenário: Pesquisar cinema pelo nome

            Dado que esteja logado como "master@cineclick.com" e "$c4l3S1573m" e seleciono cinemas
            Quando digito o nome do cinema
            Então valido que o resultado será exibido com o nome pesquisado

        Cenário: Filtrar cinemas por exibidor

            Dado que esteja logado como "master@cineclick.com" e "$c4l3S1573m" e seleciono cinemas
            Quando filtro um exibidor
            Então valido que será exibido os cinemas do exibidor selecionado 

        Cenário: Filtrar cinemas por cidade

            Dado que esteja logado como "master@cineclick.com" e "$c4l3S1573m" e seleciono cinemas
            Quando filtro por cidade
            Então valido que será exibido os cinemas da cidade selecionado
