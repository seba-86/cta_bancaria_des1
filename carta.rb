class Carta
    attr_accessor :numero, :pinta

    def initialize(numero, pinta=[])
        @numero = numero
        @pinta = pinta
    end

    def action
        "El numero es #{self.numero} y la pinta es: #{self.pinta}"
    end
end

cards = []
i = 0
while i < 5
    cards << Carta.new(rand(1..13),["C","D","E","T"].sample).action
    i +=1 
end
puts cards

# puts cards.class 

#FUNCIONA IGUAL : 

# class Carta
#     attr_accessor :numero, :pinta
    
#     def initialize
#         @numero = rand(1..13)
#         @pinta = ["C", "D", "E", "T"].sample
#     end

#     def action()
#         "El numero es #{self.numero} y la pinta es: #{self.pinta}"
#     end
# end

# cards = []
# 5.times do 
#     cards << Carta.new.action
# end
# puts cards

