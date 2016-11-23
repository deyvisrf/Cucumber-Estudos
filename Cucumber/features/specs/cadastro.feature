# language:pt

@cadastro
Funcionalidade: Cadastro

Cenário: Cadastro de Usuário
  Dado que tenho um cadastro de usuário com o seguintes atributos:
  |nome|idade|email|
  |Deyvis| 31 | deyvisrf@gmail.com|
  Quando preencho o formulário
  E clico em Salvar
  Então o usuário é cadastrado com sucesso
