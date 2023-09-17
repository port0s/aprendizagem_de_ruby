# ---------- TRATAMENTO DE MÉTODO ---------- #

class Anakin

  # Método interno de Ruby, usado para tratar métodos inexistentes numa classe.
  def method_missing(nome_do_metodo)
    p "#{nome_do_metodo}? Já não está mais entre Vader."
  end

  def Shmi
    p 'Eu gerei ele sozinha.'
  end

end

anakin = Anakin.new

anakin.Shmi

anakin.Pai

# ----------          //          ---------- #
