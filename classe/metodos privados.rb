# ---------- MÉTODOS PRIVADOS ---------- #

# Apenas permitem seu acesso a partir da classe onde estão.
# https://nandovieira.com.br/entendendo-a-visibilidade-de-metodos-do-ruby

class Vader

  # Método que chama o método privado da classe.
  def lordVader
    proprioVader
  end

  # Palavra reservada que garante a privacidade de qualquer método abaixo.
  private

  def proprioVader
    p 'NOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO'
  end

end

vader1 = Vader.new


vader1.lordVader

# Dá erro, pois o próprio método só pode ser chamado de dentro da classe.
vader1.proprioVader


# Outra forma de declarar o método privado.
class Vader

  # Método que chama o método privado da classe.
  def lordVader
    proprioVader
  end

  def proprioVader
    p 'NOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO'
  end

  private :proprioVader

end


# Outra forma de declarar o método privado.
class Vader

  # Método que chama o método privado da classe.
  def lordVader
    proprioVader
  end

  private def proprioVader
    p 'NOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO'
  end

end

# ----------       //         ---------- #
