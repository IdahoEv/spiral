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

  def empty_array(num)
    sqrt = Math.sqrt(num)
    Array.new(sqrt, Array.new(sqrt))
  end

  DIRECTIONS = [
    [ 1, 0],  # right
    [ 0, -1], # up
    [ -1, 0], # left
    [ 1, 1 ]  # down
  ]
  def spiral_fill(list)

    #cell = center_coords(list.length)
    #count = 1
    #array = [].tap do
    #cycle(DIRECTIONS) do |dir|

      ## grab items off the list
      #values = list.shift( (count + 1) / 2)

      #values.each do |val|

      #end

      #count += 1
    #end

  end

end
