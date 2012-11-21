class Spiral

  def perfect_square?(num)
    sqrt = Math.sqrt(num)
    sqrt == sqrt.to_i
  end

  def center_coords(num)
    sqrt = Math.sqrt(num)
    [
      ((sqrt/2.0)-0.5).to_i,
      (sqrt/2.0).to_i
    ]
  end


end
