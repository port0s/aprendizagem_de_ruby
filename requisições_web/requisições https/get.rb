# https://ruby-doc.org/stdlib-2.5.1/libdoc/net/http/rdoc/Net/HTTPGenericRequest.html
# https://ruby-doc.org/stdlib-2.5.1/libdoc/net/http/rdoc/Net/HTTP.html

# Requisite a gem "net/http"
require 'net/http'


# Declaração do site ao qual será feita a requisição.
endereco_site = 'reqres.in'


# Declaração da porta de conexão do SSL.
porta_ssl = 443


# Objeto = Módulo::Classe.new(argumento1 do contrutor, argumento2 do contrutor)
https = Net::HTTP.new(endereco_site, porta_ssl)


# Objeto.atributo = valor
https.use_ssl = true


# Variável = Objeto.método('caminho do site')
#OBS: /api/users retorna um json, página específica para este tipo de teste.
resposta = https.get("/api/users")


# Escreva Objeto.método: retorna o código da chamada.
puts resposta.code

# Escreva Objeto.método: retorna o status da chamada.
puts resposta.message

# Escreva Objeto.método: retorna um json
puts resposta.body


# Claase.método('arquivo', 'sobrescreva o arquivo') em cada |linha|
# OBS: caso não exista o arquivo, será criado através dessa chamada.
File.open('get_json_de_reqres.in.json', 'w') do |linha|

  # Linha.escreva(conforme cada linha retornada da requisição)
  # Irá escrever nas linhas conforme o que vier no resposta.body.
  linha.puts(resposta.body)

end
