#language:pt

    Funcionalidade: Artistas

        Cenário: Criar novo artista com sucesso

            Dado que esteja logado como "master@cineclick.com" e "$c4l3S1573m" e seleciono artistas
            Quando seleciono novo artista e preencho os campos necessários
            Então valido que o artista foi criado com sucesso

        Cenário: Consultar um artista

            Dado que esteja logado como "master@cineclick.com" e "$c4l3S1573m" e seleciono artistas
            Quando seleciono um artista para abrir as informações
            Então valido que suas informações seja exibido

        Cenário: Pesquisar um artista

            Dado que esteja logado como "master@cineclick.com" e "$c4l3S1573m" e seleciono artistas
            Quando digito o nome do artista
            Então valido que está sendo exibido o artista pesquisado

        Cenário: Filtrar artistas

            Dado que esteja logado como "master@cineclick.com" e "$c4l3S1573m" e seleciono artistas
            Quando seleciono filtro e digito o nome e status
            Então valido que está sendo exibido os artistas com os dados do filtro
