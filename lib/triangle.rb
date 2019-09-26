class Triangle
  
  attr_accessor :a, :b, :c
  
  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end
  
  def kind
    validate_triangle
    if a == b && b == c
      :equilateral
    elsif
      a == b || b == c || a == c
        :isosceles
    else
      :scalene
    end
  end
  
  def validate_triangle
    validate_positive_length
    validate_triangle_inequality
  end

  def validate_positive_length
    [a, b, c].each do |side|
      raise TriangleError if side <= 0
    end
  end

  def validate_triangle_inequality
    if (a + b) <= c
      raise TriangleError
    end
  end
  
  class TriangleError < StandardError
  end
end