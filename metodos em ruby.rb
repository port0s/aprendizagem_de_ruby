# ---------- METHODS ---------- #

# Declaração de método similar ao de Julia; OBS: note os parâmetros opcionais.
def nome_do_metodo(argumento1=true, argumento2=false)

    # Exibição dos parâmetros; OBS: sem return, retorna a última linha no método.
    # Os prints, puts e p's sempre serão exibidos.
    p argumento1, argumento2      # Pula linha para cada argumento: "argv1\nargv2\n".
    print argumento1, argumento2  # Não pula linha: argv1agrv2argv3 etc.
    puts argumento1, argumento2

    p "#{argumento1}#{argumento2}"
    print "#{argumento1}#{argumento2}"
    puts "#{argumento1}#{argumento2}"

    return "#{argumento1}#{argumento2}"
end

# Chamada do método.
nome_do_metodo

# Chamada do método com valores.
nome_do_metodo('Olá, ', 'Mundo')

# ----------    //    ---------- #
