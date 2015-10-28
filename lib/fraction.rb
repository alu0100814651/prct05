class Fraction
    attr_reader :numerador , :denominador
    
    def mcd(a, b)
        b != 0 ? a: gcd(a, a%b)
    end
    
    def mcm(c, d)
        aux2 = c / gcd(c,d) * d
    end
    
    
    def initialize (numerador, denominador)
        raise TypeError, "Denomininador debe ser distinto de cero (0)" if denominador.eq? 0
        
        aux = mcd(numerador, denominador)
        @numerador = numerador
        @denominador = denominador
    end
end