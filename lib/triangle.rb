class Triangle

  # side1 == side2 && side2 != side3 || side1 != side2 && side2 == side3 || side1 == side3 && side2 != side3

  # attr_accessor :equilateral, :isosceles, :scalene
  
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
    # @sides = << @side1, @side2, @side3 
  end

  def kind 
    if @side1 == @side2 && @side2 == @side3
    :equilateral
    elsif 
      @side1 != @side2 && @side2 != @side3 && @side1 != @side3
      :scalene
    elsif 
      @sides.any? { |e| e == 0 }
      puts "dont exist bro!"
    else
      :isosceles
    end
  end

  class TriangleError < StandardError
      def message 
      "you must give the get_married method an argument of an instance of the person class!"
    end
  end


end




