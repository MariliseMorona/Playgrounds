# Classe
# Abstração
class Televisao
# Encapsulamento
    def turn_on
        puts 'Televisão ligada'
    end

    def turn_off
        puts 'Televisão desligada'
    end
end
# Objeto
televisao = Televisao.new
televisao.turn_on

class Animal

    def dormir
        puts 'zzzz'
    end

    def pular
        puts 'toin toin'
    end

end

# Herdabilidade
class Gato < Animal 

    def miar
        puts 'miau'
    end

end

class Cachorro < Animal

    def late
        puts 'au au'
    end
end

gato = Gato.new
gato.dormir
gato.pular
gato.miar

cachorro = Cachorro.new
cachorro.dormir
cachorro.pular
cachorro.late

# Herdabilidade
class Objeto 
    def escrever
        puts 'Escrevendo'
    end
end

class Lapis < Objeto
    def escrever
        puts 'Escrevendo a lápis'
    end
end

class Caneta < Objeto
    def escrever
        puts 'Escrevendo a caneta'
    end
end

# Polimorfismo
class Teclado < Objeto
end

lapis = Lapis.new
caneta = Caneta.new
teclado = Teclado.new

lapis.escrever
caneta.escrever
teclado.escrever


class Pessoa
#Construtores 
    def initialize(nome, idade)
        @nome = nome
        @idade = idade
    end

    def conferencia
        puts "Instancia da classe iniciada com os valores"
        puts "Nome = #{@nome}"
        puts "Idade = #{@idade}"
    end
end

pessoa = Pessoa.new('Guilherme', 11)
pessoa.conferencia

class Aluno 
    attr_accessor :nome, :idade, :cidade
end
    
    
aluno = Aluno.new 
aluno.nome = 'Tenille'
puts aluno.nome
    
aluno.idade = '36 anos'
puts aluno.idade

aluno.cidade = 'São Paulo'
puts aluno.cidade