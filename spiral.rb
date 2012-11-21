
$: << 'lib'
require 'spiral'

spiral = Spiral.new
if ARGV.length != 1
  puts "USAGE: ruby spiral.rb <value>"
  exit(1)
end



