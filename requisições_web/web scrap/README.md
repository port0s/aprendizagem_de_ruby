# Bundler

gem que é utiliada para resolver dependências do projeto.

Para fazê-la funcionar:

instale o ruby

instale o ruby gems

Então, dê o comando: gem install bundler

Depois, crie a apasta do seu projeto

Em seguida, crie um arquivo chamado: Gemfile

Dentro dele, coloque source e, entre aspas, o link do site de onde vem as gems.

Caso haja mais de um site, escreva dentro de outro(s) source.

Abaixo de source, escreva gem e coloque o nome da qual deseja baixar: gem 'os'

Caso haja mais de uma, escreva dentro de outro(s) gem.

Dentro da pasta do projeto, rode bundle pelo terminal.

OBS: no Manjaro, o bash não reconheceu o camando bundle

Solução:
gem uninstall bundler, para desinstalar o bundler a partir de ruby gems.

Depois, instale pelo repositório do próprio Manjaro: sudo pacman -S ruby-bundler (versão a ser instalada)

Caso não saiba a versão: pacman -Ss ruby-bundler
