# https://nandovieira.com.br/entendendo-a-visibilidade-de-metodos-do-ruby

module Rep
  class Report
    def render
      render_header
      render_body
      render_footer
      chama
    end

    def render_header
      # Mostra o nome do pŕoprio método.
      puts __method__
      print "Nome: "
      @nome = gets.chomp
    end

    def render_body
      # Mostra o nome do pŕoprio método.
      puts __method__
      print "Dia: "
      @dia = gets.chomp
    end

    def render_footer
      # Mostra o nome do pŕoprio método.
      puts __method__
      print "Ano: "
      @ano = gets.chomp
    end

    def chama
      puts "#{@nome}, #{@dia} e #{@ano}"
    end

    private :render_header, :render_body, :render_footer, :chama

  end
end

boga = Rep::Report.new

boga.render
