#lenguage: pt
Funcionalidade: checkout
Como cliente da EBAC-SHOP
Quero fazer concluir meu cadastro   
Para finalizar minha compra

Contexto:
dado que o usuário Consiga realizar seu checkout

Cenário: campos
Quando o usuário não preencher todos os campos com "*"
Então deve exibir "Campo obrigatório não preenchido"

Cenário: E-mails
Quando o usuário inserir algum formato inválido no e-mail
Então deve exbiri "Erro no formato do e-mail, por favor preencha-o novamente"

Cenário: conclusão
Quando o usuário inserir todos os campos "*", de forma correta
Então deve exibir "Ceckou realizado com sucesso, obrigado pela sua compra"

| Nome*   | Sobrenome* | Nome da empresa(opcional)  |   País*   |      Endereço*    |     Cidade*    |      CEP* | Telefone*     | Endereço de e-mail*       |                         Mensagem                            |
| Flávio  | Andrade    |            Itaú            |   Brasil  | Rua figueredo 542 |   São Paulo    | 04587-000 | (11)9123-1239 | flavio_andrade@gmail.com  |"Ceckou realizado com sucesso, obrigado pela sua compra"     |
| Flávio  | Andrade    |                            |   Brasil  | Rua figueredo 542 |   São Paulo    | 04587-000 | (11)9123-1239 | flavio_andrade@gmail.com  |"Ceckou realizado com sucesso, obrigado pela sua compra"     | 
| Flávio  | Andrade    |            Itaú            |   Brasil  | Rua figueredo 542 |   São Paulo    | 04587-000 | (11)9123-1239 | flavio_andrade@$gmail;com |"Erro no formato do e-mail, por favor preencha-o novamente"  |
|         | Andrade    |            Itaú            |   Brasil  | Rua figueredo 542 |   São Paulo    | 04587-000 | (11)9123-1239 | flavio_andrade@$gmail;com |                "Campo obrigatório não preenchido"           | 
