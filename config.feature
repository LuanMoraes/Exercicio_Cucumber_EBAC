            #language: pt

            Funcionalidade: configuracao
            Como cliente da EBAC-SHOP
            Quero configurar meu produto de acordo com meu tamanho e gosto
            E escolher a quantidade
            Para depois inserir no carrinho

            Contexto:
            Dado que eu acesse a página de um produto da EBAC-SHOP

            Cenario: Selecionando campos obrigatórios
            Quando eu seleciono cor, tamanho e quantidade
            E clico no botao "Comprar"
            Então produto é adicionado ao carrinho

            Cenario: Adicionando mais de 10 produtos por venda
            Quando eu seleciono quantidade maior que 10
            Entao a compra deve ser permitida

            Cenario: Limpando campos de produto
            Quando eu seleciono cor, tamanho e quantidade
            E clico no botao "Limpar"
            Então o tamanho  a cor e a quantidade devem voltar para o estado original
            