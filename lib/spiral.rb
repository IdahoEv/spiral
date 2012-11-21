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
    Array.new(sqrt){ Array.new(sqrt) }
  end

  DIRECTIONS = [
    [ 1, 0],  # right
    [ 0, -1], # up
    [ -1, 0], # left
    [ 0, 1 ]  # down
  ]
  def spiral_fill(list)

    cell = center_coords(list.length)
    array = empty_array(list.length)

    count = 1
    DIRECTIONS.cycle do |dir|
      # grab items off the list
      # TODO:  Move this math to a method and spec it!
      values = list.shift( (count + 1) / 2)
      break if values.empty?

      values.each do |val|
        # insert the val.   Outer array is row, column i.e. y,x because that
        # renders visually as x, y.  :-P
        array[cell[1]][cell[0]] = val

        # move to the next cell
        cell[0] += dir[0]
        cell[1] += dir[1]
      end

      count += 1
    end
    array
  end

  def generate_spiral(num)
    spiral_fill((1..num).to_a)
  end

  def format_matrix(array)
    cellwidth = array.flatten.map{ |val| val.to_s.length }.max
    format = "%-#{cellwidth}i"

    array.map do |row|
      row.map do |val|
        sprintf(format,val)
      end.join(' ')
    end.join("\n") + "\n"
  end

end
