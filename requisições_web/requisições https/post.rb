# https://ruby-doc.org/stdlib-2.5.1/libdoc/net/http/rdoc/Net/HTTPGenericRequest.html
# https://ruby-doc.org/stdlib-2.5.1/libdoc/net/http/rdoc/Net/HTTP.html

# Requisite a gem "net/http"
require 'net/http'


# Declaração do site ao qual será feita a requisição.
endereco_site = 'reqres.in'


# Declaração da porta de conexão do SSL.
# Hash = {chave: valor} = objeto.atributo = valor
porta_ssl_ativada = {use_ssl: true}


# Objeto = Módulo::Classe::Classe.new('camino do site')
# OBS: provavelmente existe um include Net ou include HTTP dentro de POST
requisicao = Net::HTTP::Post.new("/api/users")


# Objeto.método(parâmetro)
# set_form_data = definir dados de formulário em formato json.
requisicao.set_form_data({ name: 'Mario', job: 'Encanador' })


# Objeto = Módulo::Classe.método('site', use_ssl: true) para cada
# OBS: abaixo está um bloco. fiz confusão com lambda (->).
resposta = Net::HTTP.start(endereco_site, porta_ssl_ativada) do |linha|

  # Linha.solicite(conforme cada linha retornada da requisição)
  # No caso, irá armazenar os dados da requisição, dentro da variável resposta
  linha.request(requisicao)

end


# Escreva Objeto.método: retorna o código da chamada.
puts resposta.code

# Escreva Objeto.método: retorna o status da chamada.
puts resposta.message

# Escreva Objeto.método: retorna um json
puts resposta.body


# Claase.método('arquivo', 'sobrescreva o arquivo') em cada |linha|
# OBS: caso não exista o arquivo, será criado através dessa chamada.
File.open('post_json_de_reqres.in.json', 'w') do |linha|

  # Linha.escreva(conforme cada linha retornada da requisição)
  # Irá escrever nas linhas conforme o que vier no resposta.body.
  linha.puts(resposta.body)

end



# Exemplo de como imaginei que é Net::HTTP::Post.new('argv1', 'argv2'):

# module Net
#
#   class HTTP
#
#   end
#
# end
#
# class POST
#
#     include HTTP
#
#     def initialize
#
#     end
#
#     def REQUEST_HAS_BODY
#
#     end
#
#     def RESPONSE_HAS_BODY
#
#     end
# end
