# ---------- BLOCKS ---------- #

# Executa o que tiver dentro do block, tantas vezes
5.times { p "Execução de blocks" }


# Declaração de variável
soma = 0


# Declaração de array de numbers.
array_de_numeros = [5, 10, 5]


# Em Python:
# soma = 0
# for numero_no_array in array_de_numeros:
#   soma += numero_no_array

# a cada passagem do each, some o número, que é cada elemento no array, à variável sum.
array_de_numeros.each { |numero_no_array| soma += numero_no_array }


# Com múltiploas valores.
hash = {2 => 3, 4 => 5}

# Em Python:
# for chave, valor in dicionario.items():
#   print(f"Chave = {chave}")
#   print(f"Valor = {valor}")
#   print(f"Chave * valor = {chave * valor}")
#   print("'---'")

# Percorre o hash e armazena a chave e o valor.
hash.each do |chave, valor|
  p "Chave = #{chave}"
  p "Valor = #{valor}"
  p "Chave * valor = #{chave * valor}"
  p '---'
end

# ----------   //   ---------- #


# ---------- MÉTODO COM BLOCKS ---------- #

# OBS: só se pode passar 1 block por método.

# Declaração do método que recebe um block.
def metodo_que_le_block

  # Verifica se o block foi passado.
  if block_given?

    # yield: palavra reservada que lê a passagem de um block como parâmetro.
    yield

  else

    p "Block não foi passado."

  end

end

# Retorna a mensagem interna do método
metodo_que_le_block

# Retorna a mensagem abaixo:
metodo_que_le_block { p "Vai si fudê" }

# Retorna as mensagens abaixo.
metodo_que_le_block do
  p "De novo, porra?!"
  p "Caralho! Mais que merda do caralho."
  p "Seu putinho arrombadaço do caralho de merda."
  p "Humor..."
end


# Declaração do método do block.
# &bloco = conversão implícita.

# Na realidade, se passa um símbolo chamado bloco.
# Ruby (através do &) vê, entende como uma chamada para uma conversão implícita (to_proc)
#, em relação ao valor passado, e executa.

# (to_proc = método que retorna um objeto correspondente ao valor passado)
# (Proc = pedaço de código que pode ser executado e passado como parâmetro para outros métodos)

# &bloco pode ser entendido como:
# mande uma mensagem para o objeto ola,
# com o block que EU defini chamado bloco
# e retorne um objeto bloco (to_proc, através do &) convertido conforme o valor passado por mim (string).

# https://stackoverflow.com/questions/2259775/what-do-you-call-the-operator-in-ruby
# https://brizeno.wordpress.com/2013/10/30/conceitos-na-pratica-ruby-procs/
# http://ruby-doc.org/core-1.9.3/Symbol.html#method-i-to_proc
# http://ruby-doc.org/core-1.9.3/Proc.html

# Com um argumento.
def ola(nome, &bloco)

  # Declaração da variável passada.
  @nome = nome

  # Chamada do block, similar a: p "Olá, #{nome}".
  bloco.call

end

ola('Boguinha') { p "Olá, #{@nome}"}



# Com uma hash.
def block_com_each(hash_de_numeros, &bloco)

  # Verifica se o block foi passado.
  if block_given?

    # Passa como parâmetro o hash criado,
    # que foi passado como parâmetro para o método block_com_each.
    hash_de_numeros.each do |chave, valor|

      # Chamada do bloco passado.
      bloco.call(chave, valor)

    end

  end

end

# Declaração da hash usada n método acima e no block abaixo.
hash_de_numeros = {3 => 3, 4 => 4, 5 => 5 }

# Exibe chave e valor, para depois somá-los.
# Primeiro parâmetro: hash_de_numeros
# Segundo parâmetro: block a partir de do, que é findado no end.
block_com_each(hash_de_numeros) do |chave, valor|
    p "Chave = #{chave}"
    p "Valor = #{valor}"
    p "Chave * valor = #{chave + valor}"
    p '---'
  end

# ----------        //         ---------- #
