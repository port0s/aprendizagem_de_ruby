# ---------- HERANÇA ---------- #

# Classe Pai.
class Vader

  def souSeuPai
    "Eu sou seu pai!"
  end

  def poder
    "Venha para o lado negro da força!"
  end

end

# OBS: os três métodos nao abaixo,

# Classe filha 1.
class Luke < Vader

  def nao
    "Noooooooooooooooooooooooooooooo!!!!!!!"
  end

end


# Classe filha 2.
class Leia < Vader

  def souSeuPai
    "Eu sou sua mãe!"
  end

  def nao
    "Naaaaaaaaaaaaaaaaaaaaoooooooooo!!!!!!!"
  end

end


# Classe filha 3.
class GalenMarek < Vader

  def nao
      "Eu irei devastar tudo o que ficar em seu caminho"
  end

  # Sobrescrita do método poder da classe pai: Vader.
  def poder
    # Fala do método da classe Vader
    # super: palavra reservada usada para chamar o método do pai.
    # usada quando se quer sobrescrever um pouco do método do pai,
    # mas ainda se deseja manter algo na classe filha.
    super

    # Fala do método da classe Galen.
    puts "Venha para o lado sombrio da força!"
  end
end

# LUKE.
# Instância do objeto luke1 da classe Luke, que é filha da classe Vader.
luke1 = Luke.new

# luke1 chama o método herdado de seu pai e "devolve a resposta" a partir de seu método.
p "#{luke1.souSeuPai}"

p "#{luke1.nao}"

# LEIA.
# Instância do objeto leia1 da classe Leia, que é filha da classe Vader.
leia1 = Leia.new

# leia1 chama o método herdado de seu pai e "devolve a resposta" a partir de seu método.
p "#{leia1.souSeuPai}"

p "#{leia1.nao}"

# GALEN MAREK.
# Instância do objeto galen1 da classe Leia, que é filha da classe Vader.
galen1 = GalenMarek.new

# galen1 chama o método herdado de seu pai e "devolve a resposta" a partir de seu método.
p "#{galen1.souSeuPai}"

p "#{galen1.nao}"

# Chamada do método poder, sobrescrito da classe Vader dentro da classe GalenMarek.
p "#{galen1.poder}"
# ----------   //   ---------- #
