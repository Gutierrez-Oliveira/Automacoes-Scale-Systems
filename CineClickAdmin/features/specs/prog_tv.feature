#language: pt

    Funcionalidade: Programação de TV

        Cenário: Consultar a programação de tv

            Dado que esteja logado como "master@cineclick.com" e "$c4l3S1573m" e seleciono programação de tv
            Quando seleciono uma programação
            Então valido que está sendo exibido suas informações

        Cenário: Editar uma programação de tv

            Dado que esteja logado como "master@cineclick.com" e "$c4l3S1573m" e seleciono programação de tv
            Quando seleciono uma programação e edito as informações
            Então valido que foi editado com sucesso

        Cenário: Criar nova programação de tv

            Dado que esteja logado como "master@cineclick.com" e "$c4l3S1573m" e seleciono programação de tv
            Quando seleciono nova programação de tv e preencho os campos
            Então valido que a programação de tv foi criada com sucesso

        Cenário: Pesquisar programação de tv com data inicio e fim

            Dado que esteja logado como "master@cineclick.com" e "$c4l3S1573m" e seleciono programação de tv
            Quando seleciono a data inicio e fim 
            Então valido que será exibido as programações da data selecionada 

        Cenário: Pesquisar programação por canal

            Dado que esteja logado como "master@cineclick.com" e "$c4l3S1573m" e seleciono programação de tv
            Quando seleciono um canal 
            Então valido que será exibido a programação do canal pesquisado 

        Cenário: Pesquisar programação por filme

            Dado que esteja logado como "master@cineclick.com" e "$c4l3S1573m" e seleciono programação de tv
            Quando seleciono filme 
            Então valido que será exibido a programação do filme selecionado
