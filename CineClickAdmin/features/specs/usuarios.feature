#language: pt

    Funcionalidade: Gerenciar Usuários

        Cenário: Consultar informações de um usuário

            Dado que esteja logado como "master@cineclick.com" e "$c4l3S1573m" e seleciono usuários 
            Quando seleciono um usuário para exibir suas informações
            Então valido que as informações estão sendo exibidas

        Cenário: Editar um usuário

            Dado que esteja logado como "master@cineclick.com" e "$c4l3S1573m" e seleciono usuários
            Quando seleciono um usuário e faço alterações
            Então valido que o usuário foi editado com sucesso

        Cenário: Criar um novo usuário

            Dado que esteja logado como "master@cineclick.com" e "$c4l3S1573m" e seleciono usuários
            Quando seleciono novo usuário
            E preencho os capos e adiciono suas permissões
            Então valido que o usuário foi criado com sucesso

        Cenário: Pesquisar um usuário

            Dado que esteja logado como "master@cineclick.com" e "$c4l3S1573m" e seleciono usuários
            Quando digito o nome de um usuário
            Então vlaido que será exibido o usuário pesquisado

        Cenário: Filtrar usuários por cargos

            Dado que esteja logado como "master@cineclick.com" e "$c4l3S1573m" e seleciono usuários
            Quando seleciono o filtro cargos
            Então valido que será exibido apenas usuários do cargo selecionado

        Cenário: Filtrar usuários por status

            Dado que esteja logado como "master@cineclick.com" e "$c4l3S1573m" e seleciono usuários
            Quando seleciono o filtro status
            Então valido que será exibido apenas usuários dp status selecionado