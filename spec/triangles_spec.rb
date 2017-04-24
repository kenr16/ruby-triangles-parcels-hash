require('rspec')
require('triangles')
require('pry')

describe(Triangle) do
  describe('#is_triangle?') do
    it("Returns true if the inputted set of sides are a triangle.") do
      test_trio = Triangle.new(2, 2, 8)
      expect(test_trio.is_triangle?()).to(eq(false))
    end

    it("Returns true if the inputted set of sides are a triangle.") do
      test_trio = Triangle.new(3, 4, 5)
      expect(test_trio.is_triangle?()).to(eq(true))
    end

    it("Returns false if not equilateral.") do
      test_trio = Triangle.new(5, 5, 2)
      expect(test_trio.is_equilateral?()).to(eq(false))
    end

    it("Returns true if equilateral.") do
      test_trio = Triangle.new(3, 3, 3)
      expect(test_trio.is_equilateral?()).to(eq(true))
    end

    it("Returns false if not isosceles.") do
      test_trio = Triangle.new(3, 4, 5)
      expect(test_trio.is_isosceles?()).to(eq(false))
    end

    it("Returns true if isosceles.") do
      test_trio = Triangle.new(5, 5, 3)
      expect(test_trio.is_isosceles?()).to(eq(true))
    end

    it("Returns false if not scalene.") do
      test_trio = Triangle.new(5, 5, 3)
      expect(test_trio.is_scalene?()).to(eq(false))
    end

    it("Returns true if scalene.") do
      test_trio = Triangle.new(3, 4, 5)
      expect(test_trio.is_scalene?()).to(eq(true))
    end


  end
end
