
$: << 'lib'
require 'spiral'

spiral = Spiral.new
if ARGV.length != 1
  puts "USAGE: ruby spiral.rb <value>"
  exit(1)
else
  arg = ARGV.first.to_i
  if arg > 0 and spiral.perfect_square?(arg.to_i)
    print spiral.format_matrix(spiral.generate_spiral(arg))
    exit(0)
  else
    puts "You must provide an integer that is a perfect square"
    exit(1)
  end
end



