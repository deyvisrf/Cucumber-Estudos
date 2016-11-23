# encoding: utf-8

Dado(/^que eu acesse o site do Grupon$/) do
  visit "https://www.groupon.com.br/signup"
end

Dado(/^que preencha as informacoes$/) do
    select 'Sr.', from: 'gender-select'
    find(:id, 'first-name-input').set(Faker::Name.name)
end

Quando(/^clico em enviar$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Entao(/^o cadastro sera concluido$/) do
  pending # Write code here that turns the phrase above into concrete actions
end
