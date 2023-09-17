# ---------- MODO LONGO ---------- #

class Usuario

  # get (pegue) o id.
  def id
    @id
  end

  # set (coloque) um valor na variável de instância @id.
  def id= id
    @id = id
  end

  # set (pegue) o nome.
  def nome
    @nome
  end

  # set (coloque) um valor na variável de instância @nome.
  def nome= nome
    @nome = nome
  end
end

# Intância de um objeto usuario, da classe Usuario
usuario1 = Usuario.new
usuario1.id = 1
usuario1.nome = 'Thomas Turbando Bustamante'

p "#{usuario1.nome}, seu id é: #{usuario1.id}"

# ----------     //     ---------- #


# ---------- MODO CURTO ---------- #

class Usuario

  # Para acessar um atributo da classe: attr_accessor
  # Esse atributo cria getter e setter por baixo (não ficou muito claro).
  attr_accessor :id, :nome

end

# Intância de um objeto usuario, da classe Usuario
usuario1 = Usuario.new
usuario1.id = 1
usuario1.nome = 'Thomas Turbando Bustamante'

p "#{usuario1.nome}, seu id é: #{usuario1.id}"

# ----------     //     ---------- #
