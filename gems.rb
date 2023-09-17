# ---------- GEMS ---------- #

# similar a bibliotecas ou módulos de Python.

# Requisição obrigatória da gem 'os'.
require 'os'

# Declaração do método.
def meu_sistema_operacional()

  # Detecta o sistema operacional a partir de:
  # OS: objeto.
  #.windows ou .linux ou .mac: métodos da gem os.
  if OS.windows?
    "Windows"
  elsif OS.linux?
    "Linux"
  elsif OS.mac?
    "Mac"
  else
    "Não identificado"
  end

end

# Retorna o número de cores (núcleos) do processador.
p "Meu PC possui #{OS.cpu_count} cores."

# Retorna o número de bits do sistema.
p "É um sistema #{OS.bits} bits."

# Retorna o sistema operacional (caso encontrado).
p "É um #{meu_sistema_operacional}"
