class Triangle

  # side1 == side2 && side2 != side3 || side1 != side2 && side2 == side3 || side1 == side3 && side2 != side3

  # attr_accessor :equilateral, :isosceles, :scalene
  
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
    @sides = @side1, @side2, @side3 
  end

  def kind 
    if @side1 == @side2 && @side2 == @side3
    :equilateral
    elsif 
      @side1 != @side2 && @side2 != @side3 && @side1 != @side3
      :scalene
    elsif 
      @sides.any? { |e| 
    else
      :isosceles
    end
  end




end




