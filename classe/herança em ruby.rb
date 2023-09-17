# ---------- HERANÇA ---------- #

# Classe Pai.
class Vader

  def souSeuPai
    "Eu sou seu pai!"
  end

end


# Classe filha 1.
class Luke < Vader

  def nao
    "Noooooooooooooooooooooooooooooo!!!!!!!"
  end

end


# Classe filha 2.
class Leia < Vader

  def nao
    "Naaaaaaaaaaaaaaaaaaaaoooooooooo!!!!!!!"
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
# ----------   //   ---------- #
