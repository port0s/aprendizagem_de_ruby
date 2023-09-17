# ---------- VARIÁVEL LOCAL ---------- #

# Funciona apenas no escopo de onde foi definida.

def metodo_da_variavel_local

  # Pode ser definida: local ou _local.
  local = "Hoje é sexta-feira, então, é na sola da bota, é na palma da bota."

end

# Chamada do método.

p metodo_da_variavel_local
# ----------       //       ---------- #


# ---------- VARIÁVEL GLObAL ---------- #

# Funciona em todos os lugares do programa.

def metodo_da_variavel_global

  # Pode ser definida: local ou _local.
  $global = 0
  #p $global
end

# Chamada do método.
p "No método: #{metodo_da_variavel_global}"

# Realização de mudança da variável global.
$global += 11

p "Fora do método: #{$global}"
# ----------       //       ---------- #
