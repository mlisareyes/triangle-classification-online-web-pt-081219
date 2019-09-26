<<<<<<< HEAD
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
    real_triangle = [(a + b > c), (a + c > b), (b + c > a)]
    [a, b, c].each do |side|
      real_triangle << false if side <= 0 
    raise TriangleError if real_triangle.include?(false)
    end
  end


  class TriangleError < StandardError
  end
  
end
=======
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
end
 
 

class TriangleError < StandardError
end
>>>>>>> b1b1a27423ac6fddf2f8f16ca8fe515a4b03c640
