class Triangle

  # attr_accessor :equilateral, :isosceles, :scalene
  
  def initialize(side1, side2, side3)
    @sides = []
    @side1 = side1
    @side2 = side2
    @side3 = side3
    @sides << side1 
    @sides << side2
    @sides << side3
  end

  def kind 
    if @sides.any? {|e| e == 0 } ||
      
      begin
        raise TriangleError
      # rescue TriangleError => error
        puts error.message
      end
    elsif @side1 == @side2 && @side2 == @side3
      :equilateral
    elsif 
      @side1 != @side2 && @side2 != @side3 && @side1 != @side3
      :scalene
    else
      :isosceles
    end
  end

  class TriangleError < StandardError
    def message 
      "Triangle is invalid."
    end
  end


end




