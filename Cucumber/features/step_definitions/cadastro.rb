# encoding: utf-8
Dado(/^que tenho um cadastro de usuário com o seguintes atributos:$/) do |table|
  @cadastro = table.hashes
end

Quando(/^preencho o formulário$/) do
puts @cadastro[0]['nome']
puts @cadastro[0]['idade']
puts @cadastro[0]['email']
end

Quando(/^clico em Salvar$/) do
  puts 'usuario clicou em salvar'
end

Então(/^o usuário é cadastrado com sucesso$/) do
  puts 'sucesso'
end
