#language: pt

    Funcionalidade: Criar Cadastros

        Cenário: Criar cadastro com dados válidos

            Dado que acesse a página de cadastro
            Quando preencho os campos obrigatórios
            Então valido que o cadastro foi criado com sucesso

        Cenário: Criar cadastro com email inválido

            Dado que acesse a página de cadastro
            Quando preencho os campos e e-mail inválido
            Então valido que será exibido um alerta de e-mail inválido

        Cenário: Criar usuário com senha inválida

            Dado que acesse a página de cadastro
            Quando preencho os campos e senha inválida
            Então valido que será exibido um alerta de senha inválida

        Cenário: Criar usuário com senha em branco

            Dado que acesse a página de cadastro
            Quando preencho os campos e a senha deixe em branco
            Então valido que o botão Próximo não será exibido