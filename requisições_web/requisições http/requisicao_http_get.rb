# https://ruby-doc.org/stdlib-2.5.1/libdoc/net/http/rdoc/Net/HTTPGenericRequest.html
# https://ruby-doc.org/stdlib-2.5.1/libdoc/net/http/rdoc/Net/HTTP.html

# Requisite a gem "net/http"
require "net/http"


# Objeto = Módulo::Classe.método('site', 'camino do site')
exemplo = Net::HTTP.get('example.com', '/index.html')


# Claase.método('arquivo', 'sobrescreva o arquivo') em cada |linha|
# OBS: caso não exista o arquivo, será criado através dessa chamada.
File.open('exemplo.html', 'w') do |linha|

  # Linha.escreva(conforme cada linha retornada da requisição)
  # Irá escrever nas linhas conforme o que vier no exemplo.
  linha.puts(exemplo)

end
