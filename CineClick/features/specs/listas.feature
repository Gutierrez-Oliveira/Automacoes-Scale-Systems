#language: pt

    Funcionalidade: Fluxo de Listas

        Cenário: Quero consultar as listas com sucesso

            Dado que esteja na página principal
            Quando seleciono listas
            Então valido que está sendo exibido as listas

        Cenário: Quero consultar detalhes das listas

            Dado que esteja na página principal
            Quando seleciono listas
            E seleciono alguma lista
            Então valido que está sendo exibido os detalhes da lista