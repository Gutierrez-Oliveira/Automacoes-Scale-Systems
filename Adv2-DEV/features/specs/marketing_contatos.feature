#language: pt

    Funcionalidade: Lista de contatos de marketing

        Cenário: Efetuar cadastro de nova empresa

            Dado que esteja logado "scaleadmin" e "$c4l3s1573m"
            Quando seleciono para criar nova empresa e preencho os campos
            Então valido que a empresa foi cadastrada

        Cenário: Efetuar cadastro deixando campo obrigatório em branco

            Dado que esteja logado "scaleadmin" e "$c4l3s1573m"
            Quando seleciono para criar nova empresa e deixo alguns campos em branco
            Então valido que será exibido um alerta de campo obrigatório