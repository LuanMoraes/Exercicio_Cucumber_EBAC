            #language: pt

            Funcionalidade: Checkout
            Como usuário do sistema da EBAC-SHOP
            Quero concluir meu cadastro
            Para finalizar minhas compras

            Contexto:
            Dado que eu acesse a página de checkout da EBAC-SHOP

            Cenario: Cadastrando todos os campos obrigatórios
            Quando eu preencher todos os campos obrigatórios
            E clicar no botao "FINALIZAR COMPRA"
            Então a compra é finalizada

            Cenario: Campo de e-mail com formato inválido
            Quando eu preencher o campo email com formato inválido
            Então deve mostrar a mensagem de erro: "E-mail preenchido com formato inválido."

            Esquema do Cenario: Campos Obrigatórios em branco
            Quando eu deixar em branco algum dos campos <nome>, <sobrenome>, <pais>, <endereco>, <cidade>, <estado>, <cep>, <telefone>, <email>
            E clicar no botao "FINALIZAR COMPRA"
            Entao deve exibir a <mensagem> de erro

            Exemplos:
            | nome   | sobrenome | nome da empresa | pais     | endereco               | complemento | cidade   | estado     | cep         | telefone      | email            | mensagem                            |
            |        | "Joao"    |                 | "Brasil" | "Rua dakar, numero 22" |             | "Manaus" | "Amazonas" | "60047-800" | "929713-2370" | "joao@gmail.com" | "Campo de nome não preenchido"      |
            | "Joao" |           |                 | "Brasil" | "Rua dakar, numero 22" |             | "Manaus" | "Amazonas" | "60047-800" | "929713-2370" | "joao@gmail.com" | "Campo de sobrenome não preenchido" |
            | "Joao" | "Silva"   |                 | "Brasil" |                        |             | "Manaus" | "Amazonas" | "60047-800" | "929713-2370" | "joao@gmail.com" | "Campo de endereco não preenchido"  |
            | "Joao" | "Silva"   |                 | "Brasil" | "Rua dakar, numero 22" |             |          | "Amazonas" | "60047-800" | "929713-2370" | "joao@gmail.com" | "Campo de cidade não preenchido"    |
            | "Joao" | "Silva"   |                 | "Brasil" | "Rua dakar, numero 22" |             | "Manaus" | "Amazonas" |             | "929713-2370" | "joao@gmail.com" | "Campo de cep não preenchido"       |
            | "Joao" | "Silva"   |                 | "Brasil" | "Rua dakar, numero 22" |             | "Manaus" | "Amazonas" | "60047-800" |               | "joao@gmail.com" | "Campo de telefone não preenchido"  |
            | "Joao" | "Silva"   |                 | "Brasil" | "Rua dakar, numero 22" |             | "Manaus" | "Amazonas" | "60047-800" | "929713-2370" |                  | "Campo de email não preenchido"     |




