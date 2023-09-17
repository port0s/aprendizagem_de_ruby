# https://medium.com/@ellishim/understanding-require-vs-require-relative-vs-require-all-80e3b26d89e6
# https://medium.com/@tmp_bc083744ac1f/load-path-and-require-vs-require-relative-9478cedb1894

# require: leva em conta o local em que se está executando o arquivo.
# Funciona se os arquivos estiverem na mesma pasta.
#require './polimorfismo.rb'

# require_relative: leva em conta o local em que o arquivo está sendo executando.
# Caso tivesse em outra lugar, teria-se que colocar o caminho do arquivo. /usr/bin
require_relative 'polimorfismo'


# OBS: a ordem hereditária importa:
# require "pai"
# require "filha"


# LUKE.
# Instância do objeto luke1 da classe Luke, que é filha da classe Vader.
luke1 = Luke.new

# luke1 chama o método herdado de seu pai e "devolve a resposta" a partir de seu método.
p "#{luke1.souSeuPai}"

p "#{luke1.nao}"
