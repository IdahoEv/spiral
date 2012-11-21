require 'spiral'

describe Spiral do
  let :spiral do Spiral.new end

  describe 'perfect_square?' do
    let :squares do (1..100).map{ |nn| nn*nn } end
    let :non_squares do (1..1000).to_a - squares end

    it "should return true for perfect squares" do
      squares.each { |num| spiral.perfect_square?(num).should be_true }
    end
    it "should return false for perfect squares" do
      non_squares.each { |num| spiral.perfect_square?(num).should be_false }
    end
  end

  # Array is specified as [0,0] == top left
  describe "center_coords" do
    it "should return [0,0]  n == 1" do
      spiral.center_coords(1).should == [ 0, 0 ]
    end
    it "should return [1,0]  n == 4" do
      spiral.center_coords(4).should == [ 0, 1 ]
    end
    it "should return [1,1]  n == 9" do
      spiral.center_coords(9).should == [ 1, 1 ]
    end
    it "should return [1,2]  n == 16" do
      spiral.center_coords(16).should == [ 1, 2 ]
    end
    it "should return [1,2]  n == 25" do
      spiral.center_coords(25).should == [ 2, 2 ]
    end
  end

end
