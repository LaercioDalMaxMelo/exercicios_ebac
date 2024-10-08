#lenguage: pt
Funcionalidade: Login na plataforma
Como cliente da EBAC-SHOP
Quero fazer o login na plataforma  
Para visualizar meus pedidos

Contexto: 
Dado que o usuário está na tela de login 

Cenário: Checkout
Quando o usuário inserir seu user name ou email ou senha corretamente
Então deve exibir "Seja bem vindo(a)"

Cenário: username e e-mail 
Quando o usuário inserir seu email e usernamne incorredo
Então deve exibir "Usuário ou e-mail incorreto, por favor digite novamente"

Cenário: Senha
Quando o usuário inserir sua senha incorrera
Então deve exibir "Senha incorreta, por favor digite novamente"

Exemplos:
| usuario               | senha       |                              mensagem                     |
| "gabriel@gmail.com"   | "123456"    | "Seja bem vindo(a)"                                       |
| "fernanda@ebac.com.br"| "123456"    | "Seja bem vindo(a)"                                       |
| "luiz@yahoo.com.br"   | "123456"    | "Seja bem vindo(a)"                                       |
|                       | "123456"    | "Usuário ou e-mail incorreto, por favor digite novamente" | 
|"fernanda@ebac.com.br" |             | "Senha incorreta, por favor digite novamente"             |
| "luiz@yahoo.com.br"   | "123"       | "Senha incorreta, por favor digite novamente"             |
| "gabriel@gl.com"      | "123456"    | "Usuário ou e-mail incorreto, por favor digite novamente" |                                     |