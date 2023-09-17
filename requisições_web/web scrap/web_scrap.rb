# Web Scraping = baixar o html e achar (raspar, cavucar etc) as informações úteis.

# Requisite a gem "nokogiri" <- aparentemente se lê nokoguiRÍ
require 'nokogiri'

# Requisite a gem "net/http"
require 'net/http'


# Declaração do site ao qual será feita a requisição.
endereco_site = 'reqres.in' # 'example.com' 'www.google.com'


# Declaração da porta de conexão do SSL.
porta_ssl = 443


# Objeto = Módulo::Classe.new(argumento1 do contrutor, argumento2 do contrutor)
https = Net::HTTP.new(endereco_site, porta_ssl)


# Objeto.atributo = valor
https.use_ssl = true


# Variável = Objeto.método('caminho do site')
# OBS: o barra '/' irá retornar o html do site,
# diferentemente de /api/users, que retorna um json, uma comunicação entre máquinas.
resposta = https.get("/")


# Claase.método('arquivo', 'sobrescreva o arquivo') em cada |linha|
# OBS: caso não exista o arquivo, será criado através dessa chamada.
File.open('web_scrap_de_reqres.in.html', 'w') do |linha|

  # Linha.escreva(conforme cada linha retornada da requisição)
  # Irá escrever nas linhas conforme o que vier no resposta.body.
  linha.puts(resposta.body)

end


# Objeto = Módulo::Classe(html do site)
# OBS: caso seja mudado o resposta.body para,
# por exemplo, resposta.message ou resposta.code
# documento_html retorna a página da W3C conforme o pedido.
documento_html = Nokogiri::HTML(resposta.code)


# ---------- MÉTODO at ---------- #

# Método que percorre o html e exibe uma ocorrência do buscado.

# Objeto = objeto.método('informação buscada')
h1 = documento_html.at('h1')


# Escreva Objeto.método
# Com content: exibe o conteúdo dentro de h1.
# Sem content: exibe o conteúdo de h1, incluindo as tegs <h1><\h1>.
# OBS: sempre verifique se a tag buscada existe!
# Neste momento, www.google.com não possui h1
puts h1.content

# ----------     //    ---------- #


# ---------- MÉTODO search --------- #

# Método que percorre o html e exibe quantas ocorrências do buscado existirem.

# Objeto.método('parâmetros').iterador para cada |linha|
# Percorra cada linha do objeto documento_html,
# em busca de mais de uma resposta em relação aos parâmetros pesquisados.
# OBS: bloco a partir do each sendo passado como argumento.
documento_html.search('p a').each do |linha|

  # Com content: exibe o conteúdo dentro de h1: escreva objeto.método.
  puts linha.content

  # Irá pesquisar no array e escrever o que há em href.
  # Objeto['tag'].
  puts linha['href']

  # Linha vazia.
  puts ''

end

# ----------       //      --------- #
