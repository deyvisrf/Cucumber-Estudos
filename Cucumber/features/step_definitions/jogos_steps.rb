# encoding: utf-8

Quando(/^comeco um novo jogo$/) do
  @game=Game.new
  @game.start
end

Entao(/^vejo a seguinte mensagem na tela$/) do |msg|
  expect(@game.output.to_s).to include(msg)
end

class Game
	attr_reader :output

	def initialize
		@output = []
	end

	def start
		@output << 'Bem vindo ao jogo da forca!'
	end

end
