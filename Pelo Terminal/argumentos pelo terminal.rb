# Ruby: Command Line Arguments with ARGV -> https://www.codecademy.com/articles/ruby-command-line-argv

# array = argumentos capturados pela linha de comando.
input_array = ARGV


# Exibe o comprimento do array.
puts input_array.length


# Exibe os elementos.
puts input_array


# Exibe os elementos dentro do array.
puts input_array.to_s


# O array é indexado a partir do zero.
# Difentemente de Python, na qual o argumento zero é o nome do programa.
# Então, em "Olá, Mundo. Como você está?", zero = "Olá"
puts input_array[0]
