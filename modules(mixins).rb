# ---------- MIXINS ---------- #

# Chamada de módulo em outro módulo de maneira simples.
module Imprimir

  # Declaração do método imprimir, cujo valor é recebido exibido.
  def imprimir texto

    p texto

  end

end


# Declaração do módulo LordVader.
module LordVader

  # Include: paralavra resevada que permite alocar todo conteúdo de um módulo em outro lugar.
  include Imprimir

  # Declaração do método, que utiliza informações (método imprimir) doutro módulo.
  def seuPai
    imprimir 'Eu sou seu pai!'
  end

end


# Declaração da classe Luke.
class Luke

  # Este include absorve tudo que há no módulo LordVader.
  include LordVader

  # Declaração do método nao.
  def nao
      imprimir 'NOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO'
  end

end


# Objeto = Classe.new
luke1 = Luke.new

# Objeto.método (de LordVader, que possui método de Imprimir) incluído na Classe Luke
luke1.seuPai

# Objeto.método (imprimir, incluído do módulo Imprimir) da classe Luke.
luke1.nao

# ----------   //   ---------- #
