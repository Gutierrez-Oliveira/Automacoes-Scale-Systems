#language: pt

    Funcionalidade: Fluxo de Críticas

        Cenário: Quero consultar a lista de críticas com sucesso

            Dado que esteja na página principal
            Quando seleciono críticas
            Então valido que está sendo exibido a lista de críticas

        Cenário: Quero consultar detalhes das críticas

            Dado que esteja na página principal
            Quando seleciono críticas
            E seleciono alguma crítica
            Então valido que está sendo exibido os detalhes da crítica