# ---------- LAMBDA ---------- #

# Podem ser salvas em variáveis.

# lambda agirá como um método e espera que você passe cada um dos argumentos definidos,
# enquanto um Proc funcionará como um bloco e não exigirá a verificação de argumentos rigorosos.

# https://rubynostrilhos.com.br/2018/02/20/aprenda-a-diferenca-entre-proc-lambda-e-block.html
# https://brizeno.wordpress.com/2013/10/14/conceitos-na-pratica-ruby-lambda/
# https://www.culttt.com/2015/05/13/what-are-lambdas-in-ruby/

# Retorna um objeto proc.
lambda1 = lambda { p "Vai si fudê!" }

lambda1.call

# Resultado similar ao acima, mas com sintaxe diferente.
lambda2 = -> { p "Vai si fudê!" }

lambda2.call

# lambda3 recebe um lambda (->) (similar a função anônima lambda de Java)
# cujo parâmetro é lista de nomes
# depois, recebe um bloco constituído da lista de nomes, que será precorrido
# para no fim exibir cada nome dentro da lista.
lambda3 = -> (lista_de_nomes) {lista_de_nomes.each {|nome| p nome} }

# Lista de nomes para usar no lambda3.
lista_de_nomes = ['João', 'Marcela', 'Júnior', 'Marisa', 'Boguinha']


lambda3.call(lista_de_nomes)

# Variável lambda4 recebe um lambda, que recebe uma lista de números.
lambda4 = lambda do |lista_de_numero|

  # Variável de controle, usada para comparar.
  index = 0

  # Exibe a mensagem abaixo na tela.
  p 'Número atual + Próximo número'

  # Percorre o array lista_de_numero.
  lista_de_numero.each do # |numero_na_lista| <- o cara colocou, mas não é usado.

    # Retorna o resultado se a posição do index for igual ao último elemento da lista.
    return if lista_de_numero[index] == lista_de_numero.last

    # Exibe o elemento no qual está o índice e seu sucessor.
    p "(#{lista_de_numero[index]}) + (#{lista_de_numero[index] + 1})"

    # Soma o elemento contido na posição em que o índice está, com seu sucessor.
    p lista_de_numero[index] + lista_de_numero[index + 1]

    # Soma 1 à variável index.
    index += 1

  end

end

lista_de_numero = [1, 2, 3, 4]

lambda4.call(lista_de_numero)

# ----------   //   ---------- #


# ---------- MÉTODO COM LAMBDA ---------- 3

# Declaração do método que chama lambda.
def metodo_chama_lambda(lambda1, lambda2)

  # Chamada dos lambda.
  lambda1.call
  lambda2.call

end

# Chamada do método que chama lambda.
metodo_chama_lambda(lambda1, lambda2)

# ----------         //        ---------- 3
