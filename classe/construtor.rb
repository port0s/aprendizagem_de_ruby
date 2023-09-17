# ---------- CONSTRUTOR ---------- #

# https://www.caelum.com.br/apostila-ruby-on-rails/mais-ruby-classes-objetos-e-metodos/#4-16-hashes
# http://prodis.blog.br/2010/09/10/multiplos-construtores-em-ruby-minha-versao/


class Usuario

  # Construtor em Ruby.
  def initialize(nome, idade)

    # Variáveis de instância
    @nome = nome
    @idade = idade

  end

  # Método que checa se as variáveis foram armazenadas.
  def check

    p "Instância da classe iniciada com os valores: "
    p "Nome: #{@nome}."
    p "Idade: #{@idade}."

  end

end

# Intância de um objeto usuario, da classe Usuario
usuario1 = Usuario.new('Maghaly', 20)

usuario1.check

# ----------     //     ---------- #
