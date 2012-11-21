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
end
