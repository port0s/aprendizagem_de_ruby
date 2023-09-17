# ---------- SELF COM INSTÂNCIA ---------- #

# Variável especial que aponta para o objeto atual.
# No caso, representa a própria intância (objeto) que o chamou.
# ele é ele mesmo.

class Vader

  def proprioVader
    p self
  end

end

vader1 = Vader.new

# Ambos os valores abaixo representam o mesmo endereço na memória,
# pois são o mesmo objeto.
p vader1

vader1.proprioVader

# ----------         //         ---------- #


# ---------- SELF SEM INSTÂNCIA ---------- #

class Vader

  # Métodos que possuem o self à frente, podem ser chamados como:
  # Classe.método
  def self.proprioVader
    p self
  end

end

# Classe Vader chama seu próprio método.
# Logo, retorna a prórpia classe Vader.
# Uma chamada de método sem instância de classe.
Vader.proprioVader

# ----------         //         ---------- #


# ---------- SELF EXPLÍCITO ---------- #

# Como em Pythom.

class Vader

  # Cria getters e setters para cor.
  attr_accessor :cor

  def sabre
    p "Meu sabre de luz é da cor: " + self.cor
  end

end

# Objeto = Classe.new
vader1 = Vader.new

# Objeto.atributo = 'valor'
vader1.cor = 'Vermelha'

# Objeto.método
vader1.sabre

# ----------       //       ---------- #
