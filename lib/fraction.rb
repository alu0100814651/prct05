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
        @numerador = numerador/aux
        @denominador = denominador/aux
    end
    
    def to_s
	  "#@numerador/#@denominador"
	end
	
	def to_f
	    @numerador/@denominador
	end
	
	def + (other)
	    sumadenom = mcm(@denominador , other.denominador)
	    aux3 = ( sumadenom / @denominador ) * @numerador
	    aux4 = ( sumadenom / otehr.denominador ) * other.denominador
	    Fraction.new(aux3 + aux4, sumadenom)
	end
	
	def - (other)
        restadenom = mcm(@denominador , other.denominador)
	    aux3 = ( restadenom / @denominador ) * @numerador
	    aux4 = ( restadenom / other.denominador ) * other.denominador
	    Fraction.new(aux3 - aux4, restadenom)
	end
	
	def * (other)
	    Fraction.new(@numerador * other.denominador , @denominador * other.denominador)
	end
	
	def / (other)
	    Fraction.new(@numerador * other.denominador , @denominador * other.numerador)
	end
	
	def == (other)
	    @numerador == other.numerador && @denominador == other.denominador
	end

end