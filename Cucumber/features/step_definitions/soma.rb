# encoding: utf-8

Quando(/^somo (\d+) \+ (\d+)$/) do |v1, v2|
  @soma = v1.to_i + v2.to_i
end

Então(/^o resultado é (\d+)$/) do |resultado|
  expect(@soma).to eq resultado.to_i
end
