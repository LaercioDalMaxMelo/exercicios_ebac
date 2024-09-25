#lenguage: pt
Funcionalidade: Configurar produto
Como cliente da EBAC SHOP
Quero configurar meu produto de acordo com meu tamanho e gosto
E escolher a quantidade 
Para depois inserir no carrinho

Contexto:
Dado que o usuário consiga realizar a sua compra

Cenário: Tamanho
quando o usuário clicar em um produto sem escolher o tamanho
Então deve exibir "Por favor selecione o tamanho que deseja"

Cenário: Cor
quando o usuário clicar em um produto sem escolher a cor
Então deve exibir "Por favor selecione a cor que deseja"

Cenário: Quantidade
quando o usuário clicar em um produto sem escolher quantidade
Então deve exibir "Por favor selecione a quantidade que deseja"

Cenário: Produtos
se o usuário escolher >10 produtos
Então deve exibir "Só é permitido apenas 10 produtos por compras"

Cenário: Limpar
quando o usuário clicar em limpar 
Então deve excluir todos os propdutos de sua cesta

Exemplos:
| cor   | tamanho  | quantidade  |                      mensagem                   |
| Azul  |    M     |             | "Por favor selecione a quantidade que deseja"   |
|       |    G     |      5      | "Por favor selecione a cor que deseja"          |
| Verde |          |      9      | "Por favor selecione o tamanho que deseja"      |
| Verde |    PP    |      15     | "Só é permitido apenas 10 produtos por compras" |