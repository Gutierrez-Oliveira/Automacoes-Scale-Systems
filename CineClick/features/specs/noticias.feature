#language: pt

    Funcionalidade: Noticias

        Cenário: Consultar notícia

            Dado que esteja na página principal
            Quando seleciono notícias
            Então valido que está sendo exibido a lista de notícias

        Cenário: Quero consultar detalhes de uma notícia

            Dado que esteja na página principal
            Quando seleciono notícias
            E seleciono alguma notícia
            Então valido que está sendo exibido os detalhes