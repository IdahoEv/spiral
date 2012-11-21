class Spiral

  def perfect_square?(num)
    sqrt = Math.sqrt(num)
    sqrt == sqrt.to_i
  end


  # The center of the 2D array, zero offset.  For even height/width arrays,
  # center is the cell to the lower-left of the center vertex.
  def center_coords(num)
    sqrt = Math.sqrt(num)
    [
     ((sqrt/2.0)-0.5).floor,
     (sqrt/2.0).floor
    ]
  end


end
