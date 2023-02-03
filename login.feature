            #language: pt

            Funcionalidade: Login na loja EBAC-SHOP
            Como cliente da EBAC-SHOP
            Quero fazer login na plataforma
            Para visualizar meus pedidos

            Contexto:
            Dado que eu acesse a página de login da plataforma EBAC-SHOP

            Cenario: Inserindo dados válidos para login
            Quando eu digitar login e senha válidos
            E clicar no botao "Login"
            Então a tela de checkout deve ser exibida

            Cenario: Preenchendo campos com dados inválidos
            Quando eu inserir usuario, email ou senha inválidos
            Então a mensagem de alerta deve ser exibida: "Usuário ou senha inválidos"