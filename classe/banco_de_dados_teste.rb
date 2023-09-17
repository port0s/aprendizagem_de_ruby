# ---------- BANCO DE DADOS ---------- #

# https://www.caelum.com.br/apostila-ruby-on-rails/mais-ruby-classes-objetos-e-metodos/#4-16-hashes
# http://prodis.blog.br/2010/09/10/multiplos-construtores-em-ruby-minha-versao/


class Usuario

  # Uma mimetização de um banco de dados,
  # variável de classe que começa com zero
  # e vai sendo sofrendo adições conforme novos usuários forem adicionados.
  @@id = 0

  # Construtor em Ruby.
  def initialize(nome, idade)

    # Variáveis de instância
    # Ao chamar o construtor, o primeiro usuário armazenado recebe o id 1.
    @@id = @@id + 1
    @nome = nome
    @idade = idade

  end

  # Método que checa se as variáveis foram armazenadas.
  def check

    p "Instância da classe iniciada com os valores: "
    p "Id: #{@@id}."
    p "Nome: #{@nome}."
    p "Idade: #{@idade}."

  end

end


# Intância de um objeto usuario, da classe Usuario
usuario1 = Usuario.new('Maghaly', 20)

usuario1.check


# Intância de um objeto usuario, da classe Usuario
usuario2 = Usuario.new('Morgab', 22)

usuario2.check


# Intância de um objeto usuario, da classe Usuario
usuario3 = Usuario.new('Borga', 26)

usuario3.check

# ----------     //     ---------- #
