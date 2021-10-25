#language:pt

    Funcionalidade: Reviews/Críticas

        Cenário: Quero criar uma nova crítica

            Dado que esteja logado como "master@cineclick.com" e "$c4l3S1573m" e seleciono reviews/críticas
            Quando crio uma nova crítica e preencho todos os campos
            Então valido que a crítica foi criada com sucesso

        Cenário: Consultar uma crítica

            Dado que esteja logado como "master@cineclick.com" e "$c4l3S1573m" e seleciono reviews/críticas
            Quando seleciono uma crítica
            Então valido que será exibido a crítica

        Cenário: Excluir uma crítica que esteja como rascunho

            Dado que esteja logado como "master@cineclick.com" e "$c4l3S1573m" e seleciono reviews/críticas
            Quando seleciono excluir
            Então valido que foi excluido com sucesso

        Cenário: Excluir uma crítica publicada

            Dado que esteja logado como "master@cineclick.com" e "$c4l3S1573m" e seleciono reviews/críticas
            Quando seleciono para excluir
            Então valido que não será excluído

            
