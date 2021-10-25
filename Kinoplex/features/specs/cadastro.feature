#language: pt

    Funcionalidade: Cadastro de usuário

        Cenario: Efetuar cadastro com sucesso

            Dado que esteja na tela de cadastro
            Quando preencho os dados
            Então valido que o cadastro foi efetuado com sucesso

        Esquema do Cenario: Fazer o cadastro com nome em branco (apertando espaço)

            Dado que esteja na tela de cadastro
            Quando preencho os dados com nome em branco
            Então valido que o cadastro foi efetuado com sucesso

        Esquema do Cenario: Quero criar um cadastro com CPF inválido

            Dado que esteja na tela de cadastro
            Quando preencho os dados com CPF inválido
            Então valido que o cadastro foi efetuado com sucesso

        Esquema do Cenario: Efetuar cadastro com data de nascimento inválido

            Dado que esteja na tela de cadastro
            Quando preencho os dados com data de nascimento inválido
            Então valido que o cadastro foi efetuado com sucesso
