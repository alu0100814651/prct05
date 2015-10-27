class Fraction
    
    def initialize (numerador, denominador)
        raise TypeError, "Denomininador debe ser distinto de cero (0)" if denominador.eq? 0
    end
end