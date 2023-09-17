# ---------- CLASSE ---------- #

# Declaração similar a de Julia.
class NomeDaClasse

  def metodo1
    return "Olá, você chamou o metodo1."
  end

  def metodo2
    return "Olá, você chamou o metodo2."
  end

end

# Intância do objeto da classe acima, note a palavra reservada new.
objeto = NomeDaClasse.new

# Exibe o objeto pertencente à classe acima e seu endereço.
p "#{objeto}"

# Chama e exibe o primeiro método da classe acima.
p "#{objeto.metodo1}"

# Chama e exibe o segundo método da classe acima.
p "#{objeto.metodo2}"

# ----------   //   ---------- #
