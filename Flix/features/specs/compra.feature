#language: pt

Funcionalidade: Compra
    Sendo usuário cadastrado
    Quero cadastrar propagandas do meu produto
    Para que seja divulgado

        Cenario: Efetuar pedido com vídeo pronto

            Dado que eu acesso a página principal
            Quando preencho os campos
            E carrego um vídeo
            E preencho os campos do cadastro
            Então valido que o pedido foi efetuado com sucesso

        Cenário: Efetuar pedido enviando as fotos

            Dado que eu acesso a página principal
            Quando preencho os campos
            E envio as fotos para criação do material
            E preencho os campos do cadastro
            Então valido que o pedido foi efetuado com sucesso

        Cenário: Efetuar pedido sem vídeo

            Dado que eu acesso a página principal
            Quando preencho os campos
            E seleciono sem vídeo
            E preencho os campos do cadastro
            Então valido que o pedido foi efetuado com sucesso