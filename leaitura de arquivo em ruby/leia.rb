#p

# Variável file armazena as informações abertas por File.open.
file = File.open('lista_de_itens.txt')

# Retorna Class.
p File.class

# Retorna File.
p file.class

# Retorna o tipo o objeto do tipo File e o que contém dentro: lista_de_itens.txt.
p file

# lista.cada um |elemento|
file.each do  |linha|

  # Printa cada elemento, sem \n ao final.
  puts linha

  # Printa cada elemento, sem \n ao final.
  #print linha

  # Printa cada elemento, com \n ao final.
  #p linha

# Fim.
end

# Mesma forma do acima, mais sem armazenar em uma variável.
File.foreach("lista_de_itens.txt") do |elemento| puts elemento end

# Mesma forma do feito acima, porém com chaves ao invés de do end.
File.foreach("lista_de_itens.txt") { |elemento| puts elemento }
