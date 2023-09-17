# argumento[0], array = argumentos capturados pela linha de comando.
# * = splat, permite ao ruby entender que o primeiro argumento irá para input_array.
input_array, *resto_dos_argumentos = ARGV


# Escreva argumento[0], comprimento do argumento[0]
puts input_array, input_array.length


# Escreva array ["Olá", "Mundo!"], comprimento do array
puts resto_dos_argumentos.to_s, resto_dos_argumentos.length
