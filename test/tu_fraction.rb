require 'unit/test'
require 'lib/fraction'

class TestPoint < Test::Unit::TestCase
    def setup
        @div1 = Fraction.new(5,3)
        @div2 = Fraction.new(1,2)
    end
    
    def test_simple
        assert_equal("13/6", (@div1 + @div2).to_s)
        assert_equal("7/6", (@div1 - @div2).to_s)
        assert_equal("10/3", (@div1 * @div2).to_s)
        assert_equal("10/3", (@div1 / @div2).to_s)
    end
end
