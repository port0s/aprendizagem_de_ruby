# ---------- MÉTODOS PROTEGIDOS ---------- #

# Apenas permitem seu acesso a partir da classe onde estão.
# https://nandovieira.com.br/entendendo-a-visibilidade-de-metodos-do-ruby

class Vader

  # Método que chama o método protegido da classe.
  def lordVader(intancia)
    intancia.proprioVader
    self.proprioVader
  end

  # Palavra reservada que garante a proteção de qualquer método abaixo.
  protected

  def proprioVader
    p 'NOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO'
  end

end

vader1 = Vader.new

# Passa a própria instância ao método.
vader1.lordVader(vader1)

# Dá erro, pois o próprio método só pode ser chamado de dentro da classe.
vader1.proprioVader


# Outra forma de declarar o método protegido.
class Vader

  # Método que chama o método protegido da classe.
  def lordVader
    proprioVader
  end

  def proprioVader
    p 'NOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO'
  end

  protected :proprioVader

end


# Outra forma de declarar o método protegido.
class Vader

  # Método que chama o método protegido da classe.
  def lordVader
    proprioVader
  end

  protected def proprioVader
    p 'NOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO'
  end

end

# ----------       //         ---------- #
