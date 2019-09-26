class Triangle
  
  attr_accessor :a, :b, :c
  
  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end
  
  def kind
    
    if a == b && b == c
      :equilateral
    elsif
      a == b || b == c || a == c
        :isosceles
    elsif
      a != b && b != c
        :scalene
    elsif
     raise TriangleError
    end
  end
  
  
  class TriangleError < StandardError
    
  end
end