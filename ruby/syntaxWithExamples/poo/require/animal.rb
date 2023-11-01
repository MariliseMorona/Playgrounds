class Animal

    def dormir
        puts 'zzzz'
    end

    def pular
        puts 'toin toin'
    end

end

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