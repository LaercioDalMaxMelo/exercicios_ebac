#lenguage: pt
Funcionalidade: checkout
Como cliente da EBAC-SHOP
Quero fazer concluir meu cadastro   
Para finalizar minha compra

Contexto:
dado que o usuário está na tela de checkout 

Cenário: campos
Quando o usuário não preencher todos os campos com "*"
Então deve exibir "Campo obrigatório não preenchido"

Cenário: E-mails
Quando o usuário inserir algum formato inválido no e-mail
Então deve exbiri "Erro no formato do e-mail, por favor preencha-o novamente"

Cenário: conclusão
Quando o usuário inserir nos campos <Nome>,<Sobrenome>,<País>,<Endereço>,<Cidade>,<CEP>,<Telefone>,<Endereço de e-mail>, de forma correta
Então deve exibir "Checkout realizado com sucesso, obrigado pela sua compra"

Exemplos:
| Nome*     | Sobrenome* | Nome da empresa(opcional)  |   País*   |      Endereço*    |     Cidade*    |      CEP* | Telefone*      | Endereço de e-mail*          |                         Mensagem                            |
| Flávio    | Andrade    |            Itaú            |   Brasil  | Rua Figueredo 542 |   São Paulo    | 04587-000 | (11)91235-1239 | flavio_andrade@gmail.com     |"Checkout realizado com sucesso, obrigado pela sua compra"     |
| Fernando  | Melo       |                            |   Brasil  | Rua Atlantico 111 |   São Paulo    | 03521-000 | (11)91485-1237 | fernando_melo@gmail.com      |"Checkout realizado com sucesso, obrigado pela sua compra"     | 
| Rodolpho  | Oliveira   |            Bradesco        |   Brasil  | AV Jabaquara 002  |   São Paulo    | 04587-000 | (11)99999-1111 | flavio_andrade@$gmail.com    |"Erro no formato do e-mail, por favor preencha-o novamente"  |
|           | Da sIlva   |            Itaú            |   Brasil  | Rua figueredo 542 |   São Paulo    | 04587-000 | (11)99123-5555 | fernanda_da_silva@$gmail.com |                "Campo obrigatório não preenchido"           | 
