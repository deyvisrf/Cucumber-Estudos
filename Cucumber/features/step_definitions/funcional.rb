# encoding: utf-8

Dado(/^que eu acesse o site de cadastro do Grupon$/) do
  visit "https://www.groupon.com.br/signup"
end

Quando(/^eu preencher os campos solicitados$/) do
#select 'nome do item', from: 'nome do elemento, id, etc' --- seleciona um elemento
  select 'Sr.', from: 'gender-select'

#find(:tipo do elemento, 'nome do elemento').set("informação no campo") --- busca um elemento na tela
  find(:id, 'first-name-input').set("Lucas")
  find(:id, 'last-name-input').set("Silva")
  find(:id, 'personal-identifier-input').set("44063745589")
  find(:id, 'street-input').set("Dom Pedro")
  find(:id, 'street-number-input').set("231")
  find(:id, 'postal-code-input').set("13009231")
  find(:id, 'city-input').set("São paulo")
  find(:id, 'email-input').set("lucas@qou.es")
  find(:id, 'phone-number-input').set("21 2345678")
  find(:id, 'password-input').set("123abrir")
  find(:id, 'password-confirmation-input').set("123abrir")
  execute_script "jQuery('#terms-checkbox').click();"

end

E(/^clicar em enviar$/) do
  #clica no botão click_button 'nome do botão'
  click_button 'Cadastro'
end

Então(/^o cadastro sera criado com sucesso$/) do
  sleep 20

  #pesquisa na pagia inteira a palavra que se espera
  expect(page).to have_content 'LUCAS'
end
