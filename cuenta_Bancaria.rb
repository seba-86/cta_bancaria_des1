class CuentaBancaria
    attr_accessor :nombre_de_usuario
    attr_reader :numero_de_cuenta, :vip

    def initialize(nombre_de_usuario, numero_de_cuenta, vip=0)
        @nombre_de_usuario = nombre_de_usuario
        @numero_de_cuenta = numero_de_cuenta
        if numero_de_cuenta.digits.length != 8 
            raise RangeError.new 'La cuenta tiene que tener 8 digitos'
        end
        @vip = vip
        # if vip != 0 and vip !=1
        #     raise RangeError.new 'ERROR, la categoria puede ser solo: 1 o 0'
        # end

        def numero_cuenta
            "#{self.vip}-#{self.numero_de_cuenta}"
        end
    end
end

p1 = CuentaBancaria.new('seba', 12345678,1)
# puts p1.nombre_de_usuario
# puts p1.numero_de_cuenta
# puts p1.vip
puts p1.numero_cuenta

