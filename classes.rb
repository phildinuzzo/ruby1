


class Rectangle  < Object
  def initialize(width, height)
    @width = width
    @height = height
  end

  def width
      @width
  end

  def height
      @height
  end

  def dblwidth
      @width * @width
  end

  def area  
    @width * @height
  end
end

class Square < Rectangle
  def initialize(side)
      @width = side
      @height = side
  end
end