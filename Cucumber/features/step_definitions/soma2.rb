# encoding: utf-8

Quando(/^somo <a> \+ <b>$/) do
  @a = 1
  @b = 1
end

Então(/^o resultado é <resultado>$/) do
  @resultado = @a + @b
  puts @resultado
end
