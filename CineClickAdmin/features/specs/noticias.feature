#language:pt

    Funcionalidade: Notícias

        Cenário: Quero consultar uma notícia

            Dado que esteja logado como "master@cineclick.com" e "$c4l3S1573m" e seleciono notícias
            Quando seleciona uma notícia
            Então valido que está sendo exibido a notícia

            Cenário: Criar nova notícia com sucesso

                Dado que esteja logado como "master@cineclick.com" e "$c4l3S1573m" e seleciono notícias
                Quando seleciona Nova notícia
                E preenche os cmapos da notícia
                Então valido que a notícia foi criada