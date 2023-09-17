# Abre o arquivo lista_de_itens.txt, que está no esmo diretótio.
# e adicione ('a') um |elemento|
File.open('lista_de_itens.txt', 'a') do |elemento|

  elemento.puts('Zé Droguinha')

  elemento.puts('Gonorreia')

  elemento.print('Falando')

  elemento.print('de')

  elemento.print("cocô\n")

end
