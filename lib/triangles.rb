class Triangle
  define_method(:initialize) do |side1, side2, side3|
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  define_method(:is_triangle?) do
    @side1 + @side2 > @side3 && @side2 +@side3 > @side1 && @side1 + @side3 > @side2

  end

  define_method(:is_equilateral?) do
    @side1 == @side2 && @side2 == @side3 && @side3 == @side1
  end

  define_method(:is_isosceles?) do
    @side1 == @side2 || @side2 == @side3 || @side3 == @side1
  end




end
