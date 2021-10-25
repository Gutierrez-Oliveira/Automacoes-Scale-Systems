#language: pt

    Funcionalidade: Filmes

        Cenário: Consultar filmes

            Dado que esteja logado como "master@cineclick.com" e "$c4l3S1573m" e seleciono filmes
            Quando seleciono um filme
            Então valido que está exibindo os detalhes do filme

        Cenário: Criar novo filme

            Dado que esteja logado como "master@cineclick.com" e "$c4l3S1573m" e seleciono filmes
            Quando seleciono novo filme e preencho os campos
            Então valido que foi criado com sucesso

        Cenário: Pesquisar um filme pelo nome

            Dado que esteja logado como "master@cineclick.com" e "$c4l3S1573m" e seleciono filmes
            Quando digito o nome do filme
            Então valido que o filme exibido foi o pesquisado

        Cenário:Pesquisar um filme pelo ano

            Dado que esteja logado como "master@cineclick.com" e "$c4l3S1573m" e seleciono filmes
            Quando digito o ano do filme
            Então valido que será exibido apenas filmes do ano pesquisado

        Cenário: Filtrar filme pelo título

            Dado que esteja logado como "master@cineclick.com" e "$c4l3S1573m" e seleciono filmes
            Quando digito o título de um filme
            Então valido que será exibido resultados com o nome digitado

        Cenário: Filtrar filmes com status de rascunho

            Dado que esteja logado como "master@cineclick.com" e "$c4l3S1573m" e seleciono filmes
            Quando altero o filtro de status para rascunho
            Então valido que será exibido os filmes com o status rascunho
        
        Cenário: Filtrar filmes com status de agendado

            Dado que esteja logado como "master@cineclick.com" e "$c4l3S1573m" e seleciono filmes
            Quando altero o filtro de status para agendado
            Então valido que será exibido os filmes com o status agendado

        Cenário: Filtrar filmes com status de arquivado

            Dado que esteja logado como "master@cineclick.com" e "$c4l3S1573m" e seleciono filmes
            Quando altero o filtro de status para arquivado
            Então valido que será exibido os filmes com o status arquivado

        Cenário: Filtrar filmes selecionando elenco

            Dado que esteja logado como "master@cineclick.com" e "$c4l3S1573m" e seleciono filmes
            Quando seleciono o filtro de elenco e seleciono alguém
            Então valido que será exibido os filmes com o elenco selecionando

        Cenário: Filtrar filmes por gênero

            Dado que esteja logado como "master@cineclick.com" e "$c4l3S1573m" e seleciono filmes
            Quando seleciono o filtro de gênero
            Então valido que será exibido os filmes do gênero selecionando

        Cenário: Filtrar filmes por estúdio

            Dado que esteja logado como "master@cineclick.com" e "$c4l3S1573m" e seleciono filmes
            Quando seleciono o filtro estúdio
            Então valido que será exibido os filmes do estúdio selecionando

        Cenário: Filtrar filmes por distribuidor

            Dado que esteja logado como "master@cineclick.com" e "$c4l3S1573m" e seleciono filmes
            Quando seleciono filtro data de estréia inicio e fim 
            Então valido que será exibido os filmes das datas selecionadas

            