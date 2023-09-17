# ---------- VARIÁVEIS DE CLASSE ---------- #

# Variável compartilhada entre todas as intâncias.

# Classe para o exemplo.
class Usuario

  # Variável global que irá controlar o fluxo de adição de usuários.
  @@id_do_usuario = 0

  # Chamada do método que adiciona o usuário em si.
  def adiciona_usuario(nome)

    # Exibe uma mensagem informando a adição do usuário.
    p "Usuário #{nome} adicionado!"

    # Acrescenta mais um à variável de classe.
    @@id_do_usuario += 1

    # Exibe o id do usuário.
    p @@id_do_usuario

  end

end

usuario_um = Usuario.new
usuario_um.adiciona_usuario("João")

usuario_dois = Usuario.new
usuario_dois.adiciona_usuario("Bundão")

usuario_tres = Usuario.new
usuario_tres.adiciona_usuario("Boguinha")


# Pra elucidar: variável de classe: todas as intâncias compartilham.
class Numero

  @@numero = 0

  def soma_numero
    @@numero += 1
    p "#{@@numero}"
  end

end

n1 = Numero.new
n1.soma_numero

n2 = Numero.new
n2.soma_numero

n3 = Numero.new
n3.soma_numero


# ----------          //         ---------- #


# ---------- VARIÁVEIS DE INSTÂNCIA ---------- #

# Variável retida a intância de um objeto.

# Classe que será utilizada no exemplo.
class Usuario_variavel_de_instancia

  # Chamada do método que adiciona o usuário em si.
  def adiciona_usuario(nome)

    # Declaração da variável de instância que recebe o valor passado.
    @nome = nome

    # Exibe uma mensagem que adicionou o usuário.
    p "Usuário adicionado."

    # Chama o método abaixo.
    ola_trouxa

  end

  # Método que irá acessar a variável de instância.
  def ola_trouxa

    # Só de declarar a variável de intância, todos os métodos na classe podem fazer uso dela.
    p "Seja bem-vindo #{@nome}, trouxa."

  end

end

# Instâncias de objetos da classe Usuario_variavel_de_instancia.
usuario_um = Usuario_variavel_de_instancia.new
usuario_um.adiciona_usuario("João")

usuario_dois = Usuario_variavel_de_instancia.new
usuario_dois.adiciona_usuario("Bundão")

usuario_tres = Usuario_variavel_de_instancia.new
usuario_tres.adiciona_usuario("Boguinha")

# ----------           //           ---------- #
