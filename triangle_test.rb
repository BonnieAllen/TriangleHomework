# 1. Copy this file from the course notes repo into a new repository
# 2. Run `ruby triangle_test.rb`. You should see 6 error messages.
# 3. Implement the Triangle class until all 6 tests are passing.
require "minitest/autorun"

class Triangle
  def initialize (a,b,c)
    @a = a
    @b = b
    @c = c
  end
  def kind 
    if (@a == @b && @a == @c)  #sides are equal  
      return :equilateral
      elsif (@a == @b || @a == @c) #two sides are equal
        return :isosceles 
      else 
        return :scalene
    end
  end
  def perimeter
    @a + @b + @c
  end
end

class TestMeme < Minitest::Test
  def test_equilateral
    t = Triangle.new(5,5,5)
    assert_equal :equilateral, t.kind
  end

  def test_isosceles
    s = Triangle.new(2,2,3)
    assert_equal :isosceles, s.kind
  end

  def test_other_isosceles
    t = Triangle.new 3,4,3
    assert_equal :isosceles, t.kind
  end

  def test_scalene
    t = Triangle.new 6,7,8
    assert_equal :scalene, t.kind
  end

  def test_perimeter_right
    t = Triangle.new(3,4,5)
    assert_equal 12, t.perimeter
  end

  def test_perimeter_eq
    t = Triangle.new 10,20,30
    assert_equal 60, t.perimeter
  end
end
