#language: pt

    Funcionalidade: Canais de TV

        Cenário: Consultar informações de um canal de tv

            Dado que esteja logado como "master@cineclick.com" e "$c4l3S1573m" e seleciono canais de tv
            Quando seleciono um canal de tv
            Então valido que será exibido as informações do canal de tv

        Cenário: Criar novo canal de tv com sucesso

            Dado que esteja logado como "master@cineclick.com" e "$c4l3S1573m" e seleciono canais de tv
            Quando seleciono novo canal de tv e preencho os campos
            Então valido que será criado com sucesso

        Cenário: Editar um canal de tv

            Dado que esteja logado como "master@cineclick.com" e "$c4l3S1573m" e seleciono canais de tv
            Quando seleciono um canal de tv e edito as informações
            Então valido que as edições foram salvas com sucesso

        Cenário: Pesquisar um canal de tv

            Dado que esteja logado como "master@cineclick.com" e "$c4l3S1573m" e seleciono canais de tv
            Quando digito um canal de tv para pesquisar
            Então valido que será exibido o canal de tv digitado