#language: pt

    Funcionalidade: Exibidores

        Cenário: Consultar um exibidor

            Dado que esteja logado como "master@cineclick.com" e "$c4l3S1573m" e seleciono exibidores
            Quando seleciono um exibidor
            Então valido que será exibido as informações do exibidor

        Cenário: Editar um exibidor

            Dado que esteja logado como "master@cineclick.com" e "$c4l3S1573m" e seleciono exibidores
            Quando seleciono um exibidor e edito suas informações
            Então valido que as alterações foram feitas com sucesso

        Cenário: Criar um novo exibidor com sucesso

            Dado que esteja logado como "master@cineclick.com" e "$c4l3S1573m" e seleciono exibidores
            Quando seleciono novo exibidor e preencho os campos
            Então valido que foi criado com sucesso

        Cenário: Pesquisar um exibidor

            Dado que esteja logado como "master@cineclick.com" e "$c4l3S1573m" e seleciono exibidores
            Quando digito um nome do exibidor
            Então valido que está sendo exibido o exibidor pesquisado
