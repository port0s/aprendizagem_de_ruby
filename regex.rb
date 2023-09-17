# ---------- DECLARAÇÃO ---------- #

# Existem três formas de declaração de Regex:

regex1 = /abc/

regex2 = %r(abc)

regex3 = Regexp.new('abc')

frase = "Olá, mundo!"

# ----------     //     ---------- #


# ---------- BUSCA POR POSIÇÃO ---------- #


# =~ -> caso exista, diz a posição do termo buscado: aqui 2,
# pois o padrão 'by' existe e começa em 2:
# => r = 0, u = 1, b = 2.
regex1 = /by/ =~ 'ruby'

# ----------        //         ---------- #


# ---------- USO DE MÉTODOS ---------- #

frase = 'Olá, caralho de mundo!'

existe_na_string = /caralho/.match(frase)

# Exibe o que tem antes do elemento buscado.
existe_na_string.pre_match

# Exibe o que tem depois do elemento buscado.
existe_na_string.post_match

# ----------       //       ---------- #


# ---------- CARACTERES ESPECIAIS ---------- #

# Busca o ponto.
existe_na_string = /\!/.match(frase)

# Busca um caracter entre 1 e 5.
tem_tal_numero = /[1-5]/.match('0123456789')

# OBS: case-sensitive /[a-z]/ diferente de /[A-Z]/
tem_tal_letra = /[a-z]/.match('0123a56789')

# Pega o primeiro decimal.
tem_decimal = /\d/.match('asdde10sasdjhb11')

# ----------          //          ---------- #


# ---------- REPETIÇÃO ---------- #

# 55 21 91234-5678
# {numero de repetições} = irá repetir o número de vezes buscado.
# ex: \d{2} = pega um decimal 2 vezes.
pega_numero = /\d{2} \d{2} \d{5}-\d{4}/.match('55 11 91234-5678')

# OBS: \d{2,} = faça 2 repetições e pegue quantos decimais tiver depois.
# ex: \d{5,} = irá pegar todos os números a partir do 9.
pega_numero = /\d{2} \d{2} \d{5,}/.match('55 11 912345678')

# ----------     //    ---------- #
