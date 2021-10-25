#language:pt

    Funcionalidade: Home

        Cenário: Visualizar destaques que são exibidos na home

            Dado que esteja logado como "master@cineclick.com" e "$c4l3S1573m" e seleciono home
            Quando seleciona uma publicação em destaque
            Então valido que está sendo exibido a publicação

        Cenário: Visualizar top 15

            Dado que esteja logado como "master@cineclick.com" e "$c4l3S1573m" e seleciono home
            Quando seleciono uma publicação do top 15
            Então valido que está sendo exibido