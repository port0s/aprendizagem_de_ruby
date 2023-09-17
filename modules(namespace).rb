# ---------- MODULE (NAMESPACE) ---------- #

# Declaração do módulo.
module Reverta

  # Declaração do método, note o self, similar ao de Python.
  def self.exiba texto

    # Transforma numa string e inverte o texto.
    p texto.reverse.to_s

  end

  # Declaração de classe dentro do módulo.
  class Imprimir

    # Método imprima, que recebe uma string.
    def imprima texto

      # Exibe a string recebida.
      p texto

    end

  end

end

# Módulo::método 'argumento'.
Reverta::exiba 'Esta frase será exibida ao contrário.'

# Objeto = Módulo::Classe.paralavra reservada.
imprimir1 = Reverta::Imprimir.new

# Objeto.método da Classe 'argumento'.
imprimir1.imprima 'Esta frase será exibida na tela.'

# ----------         //         ---------- #
